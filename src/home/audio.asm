InitSound:
	PSH
	PHW
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	JSR _InitSound
	PLW
	JSR SwitchLower16K
	PLL
	RTS

UpdateSound:
	PSH
	PHW
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	JSR _UpdateSound
	PLW
	JSR SwitchLower16K
	PLL
	RTS

_LoadMusicByte:
	LDX zWindow1
	STA zWindow1
	JSR SwitchLower16K
	LDY #0
	LDA (zCurTrackAudioPointer), Y
	STA zCurMusicByte
	TXA
	STA zWindow1
	JMP SwitchLower16K

AddAudioOffset:
	TYA
	CLC
	ADC zCurTrackAudioPointer
	STA zCurTrackAudioPointer
	LDA #0
	ADC zCurTrackAudioPointer + 1
	STA zCurTrackAudioPointer + 1
	RTS

PlayMusic:
	PSH
	PHW
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	TYA
	BEQ @Skip
	LDA #$0f
	STA rMIX
	JSR _PlayMusic
	BNE @Done
@Skip:
	JSR _InitSound
@Done:
	PLW
	JSR SwitchLower16K
	PLL
	RTS

PlayMusic2:
	PSH
	PHW
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	JSR _InitSound
	TYA
	BEQ @Skip
	LDA #$0f
	STA rMIX
	JSR _PlayMusic
@Skip:
	PLW
	JSR SwitchLower16K
	PLL
	RTS

PlayCry:
	PSH
	PHW
	LDA #PRG_MonCries
	STA zWindow1
	JSR SwitchLower16K
	LDA #>PokemonCries
	STA zCurTrackAudioPointer + 1
	LDA #<PokemonCries
	STA zCurTrackAudioPointer
REPT 5
	JSR AddAudioOffset
ENDR
	LDY #0
	LDA (zCurTrackAudioPointer), Y
	TAX
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryPitch
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryPitch + 1
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryLength
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zCryLength + 1
	TXA
	TAY
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	JSR _PlayCry
	PLW
	JSR SwitchLower16K
	PLL
	RTS

PlaySFX:
	PSH
	PHW
	JSR CheckSFX
	BCC @Play
	CPY zCurSFX
	BEQ @Play
	BCS @Skip
@Play:
	STY zCurSFX
	LDA #PRG_Audio
	STA zWindow1
	JSR SwitchLower16K
	JSR _PlaySFX
@Skip:
	PLW
	JSR SwitchLower16K
	PLL
	RTS

CheckSFX:
	LDA iChannel6 + CHANNEL_FLAGS1
	ORA iChannel7 + CHANNEL_FLAGS1
	ORA iChannel8 + CHANNEL_FLAGS1
	ORA iChannel9 + CHANNEL_FLAGS1
	ORA iChannel10 + CHANNEL_FLAGS1
	LSR A
	RTS
