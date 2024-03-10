InitSound:
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	bsw_a000
	LDA #PRG_Audio
	STA zWindow2
	JSR _InitSound
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS

UpdateSound:
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	bsw_a000
	LDA #PRG_Audio
	STA zWindow2
	JSR _UpdateSound
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS

_LoadMusicByte:
	bmuo
	bso_8000
	LDY #0
	LDA (zCurTrackAudioPointer), Y
	STA zCurMusicByte
	bdio
	LDA zWindow1, X
	bmuo
	bso_8000
	RTS

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
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	bsw_a000
	LDA #PRG_Audio
	STA zWindow2
	TYA
	BEQ @Skip
	JSR _PlayMusic
	BNE @Done
@Skip:
	JSR _InitSound
@Done:
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS

PlayMusic2:
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	bsw_a000
	LDA #PRG_Audio
	STA zWindow2
	JSR _InitSound
	TYA
	BEQ @Skip
	JSR _PlayMusic
@Skip:
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS

PlayCry:
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	LDA #PRG_MonCries
	bsw_a000
	LDA #PRG_MonCries
	STA zWindow2
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
	JSR _PlayCry
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS

PlaySFX:
	PHP
	PHA
	PHX
	PHY
	LDA zWindow1
	PHA
	LDA zWindow2
	PHA
	LDA #PRG_Audio
	bsw_8000
	LDA #PRG_Audio
	STA zWindow1
	bsw_a000
	LDA #PRG_Audio
	STA zWindow2
	STY zCurSFX
	JSR _PlaySFX
	PLA
	bsw_a000
	STA zWindow2
	PLA
	bsw_8000
	STA zWindow1
	PLY
	PLX
	PLA
	PLP
	RTS
