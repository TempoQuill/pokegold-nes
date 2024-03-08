.include "src/home/audio.asm"

NMI:
	PHP
	PHA
	PHX
	PHY
	JSR UpdateSound
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
	JMP InitPlayer

BCDLayout:
	;++++++++++++++++++++++++++++++++ 2000
	;++++++++++++++++++++++++++++++++ 2020
	;++++++++++++++++++++++++++++++++ 2040
	;++++++++++++++++++++++++++++++++ 2060
	;++++++++++++++++++++++++++++++++ 2080
	;++++++++++++++++++++++++++++++++ 20a0
	;++++++++++++++++++++++++++++++++ 20c0
	;++++++++++++++++++++++++++++++++ 20e0
	;++++++++++++++++++++++++++++++++ 2100
	;++++++++++++++++++++++++++++++++ 2120
	;++++++++++++++++++++++++++++++++ 2140
	;++++++++++++++++++++++++++++++++ 2160
	text $2188, "GSC Audio Player"
	;++++++++GSC Audio Player++++++++ 2180
	;++++++++++++++++++++++++++++++++ 21a0
BCDL_Music:
	text $21cf, "000"
	;+++++++++++++++000++++++++++++++ 21c0
	;++++++++++++++++++++++++++++++++ 21e0
BCDL_Cry:
	text $220f, "000"
	;+++++++++++++++000++++++++++++++ 2200
	;++++++++++++++++++++++++++++++++ 2220
BCDL_SFX:
	text $224f, "000"
	;+++++++++++++++000++++++++++++++ 2240
	;++++++++++++++++++++++++++++++++ 2260
	;++++++++++++++++++++++++++++++++ 2280
	;++++++++++++++++++++++++++++++++ 22a0
	;++++++++++++++++++++++++++++++++ 22c0
	;++++++++++++++++++++++++++++++++ 22e0
	;++++++++++++++++++++++++++++++++ 2300
	;++++++++++++++++++++++++++++++++ 2320
	;++++++++++++++++++++++++++++++++ 2340
	;++++++++++++++++++++++++++++++++ 2360
	;++++++++++++++++++++++++++++++++ 2380
	;++++++++++++++++++++++++++++++++ 23a0
	;++++++++ 2000
	;++++++++ 2080
	;++++++++ 2100
	attribute $2188, 05050505
	;++1111++ 2180
	;++++++++ 2200
	;++++++++ 2280
	;++++++++ 2300
	;++++++++ 2380
BCDLayout_End:
	db 0

InitPlayer:

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
