IRQ:
Home1_IRQ:
	RTI

; ReadBuffer - VRAM buffer reading
; place a JSR to here in NMI somewhere
; OG routine by crySTAlmoon
; Optimizations by Tempo Quill
; layout:
; iStringBufferFlag = $05ff
; iStringBuffer = $0600 - $06ff
ReadBuffer:
Home1_ReadBuffer:
	LDA iStringBufferFlag
	REQ
	; byte 0 - data length
	; byte 1 - target PPU addr hi
	; byte 2 - target PPU addr lo
	; byte 3 - flags
	;	bit 0 - if set: inc 32, else: inc 1
	;	bit 1 - rle
	; byte 4 - byte(s)
	LDY #0
@checkloop:
	LDA iStringBuffer, Y
	REQ
	TAX ; x = data length
	INY
	; hi
	LDA iStringBuffer, Y
	STA rWORD
	INY
	; lo
	LDA iStringBuffer, Y
	STA rWORD
	INY
	; direction
	LDA iStringBuffer, Y
	AND #1
	BNE @inc32
; inc1
	LDA zPPUCtrlMirror
	AND #$fb
	STA zPPUCtrlMirror
	STA rCTRL
	; loop single byte?
	LDA iStringBuffer, Y
	AND #2
	BNE @rle
@loop:
	; data stream
	INY
	LDA iStringBuffer, Y
	STA rDATA
	DEX
	BNE @loop
	BEQ @checkmore
@inc32:
	LDA zPPUCtrlMirror
	ORA #4
	STA zPPUCtrlMirror
	STA rCTRL
	LDA iStringBuffer, Y
	AND #2
	BEQ @loop
@rle:
	DEX
	INY
	LDA iStringBuffer, Y
@rle_loop:
	STA rDATA
	DEX
	BNE @rle_loop
@checkmore:
	INY
	BPL @checkloop
	RTS

Farcall:
Home1_Farcall:
;        b hl
; input: A(XY)
	PHP
	STY zSavedPointer
	STX zSavedPointer + 1
	JSR PushFarBank
	LDA #<@Return
	SEC
	SBC #1
	TAX
	LDA #>@Return
	SBC #0
	PHA
	PHX
	JMP (zSavedPointer)
@Return:
	LDA zWindow1
	JSR SwitchLower16K
	PLP
	RTS

ClearCHR:
Home1_ClearCHR:
; clear CHR bankswitching queue
	LDX #zCHRWindowQueue_End - zCHRWindowQueue - 1
	LDA #0
@Loop:
	STA zCHRWindowQueue, X
	DEX
	BPL @Loop
	RTS

PushCHR:
Home1_PushCHR:
; switch CHR banks
; zCHRWindowQueue(+0) = number of loops
	LDA zCHRWindowQueue
	REQ
	CMP #(zCHRWindowQueue_End - zCHRWindowQueue) / 3 + 1
	RCS ; step out if overloaded
	LDY #1
@loop:
	; upper byte
	LDA zCHRWindowQueue, Y
	STA MMC5_CHRBankSwitchUpper
	INY
	; lower byte
	LDA zCHRWindowQueue, Y
	INY
	; register offset
	LDX zCHRWindowQueue, Y
	STA MMC5_CHRBankSwitch1, X
	INY
	DEC zCHRWindowQueue
	BNE @Loop
	RTS

PushFarBank:
Home1_PushFarBank:
	STA zSavedBank
	BPL SwitchLower16K

PushLower16K:
Home1_PushLower16K:
	STA zWindow1

SwitchLower16K:
Home1_SwitchLower16K:
	ASL A
	ORA #$80
	STA MMC5_PRGBankSwitch2
	ORA #1
	STA MMC5_PRGBankSwitch3
	RTS

NMI:
Home1_NMI:
	PSH
	JSR PushCHR
	JSR ReadBuffer
	JSR UpdateSound
	LDA zNMITimer
	BEQ @Quit
	DEC zNMITimer
@Quit:
	JSR ClearCHR
	PLL
	RTI

RESET:
Home1_RESET:
	LDA #3 ; all 8K switchable
	STA MMC5_PRGMode
	LDA #3 ; 1K mode (need the flexibility)
	STA MMC5_CHRMode

	; PRG RAM handshake
	LDA #2
	STA MMC5_PRGRAMProtect1
	LDA #1
	STA MMC5_PRGRAMProtect2
	; Extended attributes enabled
	STA MMC5_ExtendedRAMMode

	; Set nametable mapping
	LDA #MMC5_HMirror
	STA MMC5_NametableMapping

	; setup RAM
	LDA #0
	STA MMC5_PRGBankSwitch1
	; upper CHR bits go unused
	STA MMC5_CHRBankSwitchUpper

	; MMC5 Pulse channels
	LDA #$0f
	STA rEXMIX

	; select the first three CHR banks
	LDX #0
	STX MMC5_CHRBankSwitch9
	STX MMC5_CHRBankSwitch5
	INX
	STX MMC5_CHRBankSwitch10
	STX MMC5_CHRBankSwitch6
	INX
	STX MMC5_CHRBankSwitch11
	STX MMC5_CHRBankSwitch7
	INX
	STX MMC5_CHRBankSwitch12
	STX MMC5_CHRBankSwitch8
	INX
	STX MMC5_CHRBankSwitch4
	INX
	STX MMC5_CHRBankSwitch3
	INX
	STX MMC5_CHRBankSwitch2
	INX
	STX MMC5_CHRBankSwitch1
	LDX #0
	TXA
	; init RAM
@Loop:
	; clear RAM
	DEX
	STA $0, X
	STA $100, X
	STA $200, X
	STA $300, X
	STA $400, X
	STA $500, X
	STA $600, X
	STA $700, X
	STA $5e00, X ; mmc5 RAM
	BNE @Loop

	; select the starter PRG banks
	LDA #0
	STA zWindow1
	STA MMC5_PRGBankSwitch2
	ORA #1
	STA MMC5_PRGBankSwitch3
	; starter DPCM bank
	LDA #PRG_DPCM0
	STA MMC5_PRGBankSwitch4
	; Home ROM
	LDA #PRG_Home
	STA MMC5_PRGBankSwitch5

	SEI
	CLD
; Nametable base 0, Horizontal writing, OBJ base 0, BG base 0, 8x8 OBJs, no NMI
	LDA #0
	STA rCTRL
	STA zPPUCtrlMirror
	LDX #<iStackTop ; Reset stack pointer
	TXS

	; disable ExAttr
	LDA #2
	STA MMC5_ExtendedRAMMode

@VBlankLoop:
	; Wait for first VBlank
	LDA rSTATE
	AND #PPUStatus_VBlankHit
	BEQ @VBlankLoop

@VBlank2Loop:
	; Wait for second VBlank
	LDA rSTATE
	BPL @VBlank2Loop

	LDA #MMC5_SFiller
	STA MMC5_NametableMapping
	LDA #0
	STA MMC5_FillModeTile
	STA MMC5_FillModeColor
	LDA #1 ; ExAttr enabled
	STA MMC5_ExtendedRAMMode
	; our game's configuration is now initialized
	JSR InitSound
	JSR HideSprites
	; make sure track 0 is playing
	LDA #0
	STA rMASK
	STA zPPUMaskMirror
	TAY
	JSR PlayMusic
	JMP MainTerminal

DelayFrame:
Home1_DelayFrame:
	LDA #1
DelayFrames:
Home1_DelayFrames:
; stop for A frames
	STA zNMITimer
@Halt:
	LDA zNMITimer
	BNE @Halt
	RTS

HomeTerminal:
Home1_HomeTerminal:
; input a(xy)
	LDA zSavedPointer
	BEQ +
	DEC zSavedPointer + 1
+	DEC zSavedPointer
	LDA zSavedPointer + 1
	PHA
	LDA zSavedPointer
	PHA
	LDA zSavedBank
	STA MMC5_PRGBankSwitch5
	RTS

; y, tile, attr, x
HideSprites:
Home1_HideSprites:
	LDY #$f8
	LDX #0
	TXA
@Loop:
	CLC
	ADC #$fc
	TAX
	LDA #0
	STA iVirtualOAM + 3, X
	STA iVirtualOAM + 2, X
	STA iVirtualOAM + 1, X
	TYA
	STA iVirtualOAM, X
	TXA
	BNE @Loop
	RTS

BCDLayout:
BCDLayout_End:
	db 0

MainTerminal:
Home1_MainTerminal:


LoadTilemapToTempTilemap:
	RTS

SafeLoadTempTilemapToTilemap:
	RTS

.include "src/home/audio.asm"
