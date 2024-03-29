.include "src/home/audio.asm"

NMI:
	PHP
	PHA
	PHX
	PHY
	JSR UpdateSound
	LDA zNMITimer
	BEQ @Quit
	DEC zNMITimer
@Quit:
	PLY
	PLX
	PLA
	PLP
	RTI

RESET:
	LDA #3 ; all 8K switchable
	STA MMC5_PRGMode
	LDA #1 ; 4K mode (try not to use $5130)
	STA MMC5_CHRMode

	; PRG RAM handshake
	; Enable writable MMC5 exclusive RAM
	LDA #2
	STA MMC5_PRGRAMProtect1
	STA MMC5_ExtendedRAMMode
	LDA #1
	STA MMC5_PRGRAMProtect2

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
	; bank 0 is a mirror of 3
	LDX #0
	STX MMC5_CHRBankSwitch12
	STX MMC5_CHRBankSwitch8
	INX
	STX MMC5_CHRBankSwitch4
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
	LDA #PRG_Audio
	STA MMC5_PRGBankSwitch2
	STA zWindow1
	LDA #PRG_Music0
	STA MMC5_PRGBankSwitch3
	STA zWindow2
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

BCDLayout:
BCDLayout_End:
	db 0

DelayFrame:
	LDA #1
DelayFrames:
; stop for A frames
	STA zNMITimer
@Halt:
	LDA zNMITimer
	BNE @Halt
	RTS

MainTerminal:

; y, tile, attr, x
HideSprites:
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

Farcall:
;        b hl
; input: A(XY)
; NOTE: 8K Window chosen depends on address
	PHP
	STA zSavedBank
	STY zSavedPointer
	STX zSavedPointer + 1
	PHA
	PHX
	PHY
	TXA
	LDX #0
	AND #$20
	BEQ +
	INX
+	LDA zSavedBank
	STA MMC5_PRGBankSwitch2, X
	LDA #<@Return
	SEC
	SBC #1
	PHA
	LDA #>@Return
	SBC #0
	PHA
	JMP (zSavedPointer)
@Return:
	LDA zWindow1
	STA MMC5_PRGBankSwitch2
	LDA zWindow2
	STA MMC5_PRGBankSwitch3
	PLY
	PLX
	PLA
	PLP
	RTS
; ReadBuffer - VRAM buffer reading
; place a JSR to here in NMI somewhere
; OG routine by crySTAlmoon
; Optimizations by Tempo Quill
; layout:
; iStringBufferFlag = $05ff
; iStringBuffer = $0600 - $06ff
ReadBuffer:
	LDA iStringBufferFlag
	BEQ @return
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
	BEQ @return
	TAX
	INY
	LDA iStringBuffer, Y
	STA rWORD
	INY
	LDA iStringBuffer, Y
	STA rWORD
	INY
	LDA iStringBuffer, Y
	AND #1
	BNE @inc32
	LDA zPPUCtrlMirror
	AND #$fb
	STA zPPUCtrlMirror
	STA rCTRL
	LDA iStringBuffer, Y
	AND #2
	BNE @rle
@loop:
	INY
	LDA iStringBuffer, y
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
	CPY #128
	BCC @checkloop
@return:
	RTS

LoadTilemapToTempTilemap:
	RTS

SafeLoadTempTilemapToTilemap:
	RTS
