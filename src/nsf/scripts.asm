nsf_script_end_cmd = 0
nsf_cmd_start = $f2
nsf_music_off_cmd = $f2
nsf_music_on_cmd = $f3
nsf_wait_sfx = $f4		; f4
nsf_skip_frames = $f5		; f5 xx
nsf_silence_cmd = $f6		; f6 xxyy
nsf_music_cmd = $f7		; f7 xx
nsf_cry_cmd = $f8		; f8 xx
nsf_sfx_cmd = $f9		; f9 xx
nsf_extend_script_cmd = $fa	; fa
nsf_restart_script_cmd = $fb	; fb llhh
nsf_new_script_cmd = $fc	; fc xx
nsf_offset_jump_cmd = $fd	; fd xx
nsf_loop_cmd = $fe		; fe xx
nsf_break_cmd = $ff		; ff

UpdateAudioScript:
	LDA iNSF_Cue
	REQ
	LDA iNSF_Pointer
	ORA iNSF_Pointer + 1
	BNE @Update
	JSR LoadCuePointers
@Update:
	; wait to cut out
	LDA zMusicSilence
	RNE
	; no cut out
	DEC iNSF_Delay
	RNE
@Loop:
	LDA iNSF_Pointer
	STA zCurTrackAudioPointer
	LDA iNSF_Pointer + 1
	STA zCurTrackAudioPointer + 1
	LDY iNSF_Offset
	LDA (zCurTrackAudioPointer), Y
	JEQ EndAudioScript
	CMP #nsf_cmd_start
	BCC @Delay
	JSR LoadAudioScriptCommand
	JMP @Loop
@Delay:
	STA iNSF_Delay
	INY
	STY iNSF_Offset
	RTS

LoadCuePointers:
	LDA #0
	STA iNSF_Offset
	STA iNSF_LoopCounter
	STA iNSF_LoopOffset
	LDA #1
	STA iNSF_Delay
	LDY iNSF_Cue
	DEY
	TYA
	ASL A
	TAY
	LDA CuePointers, Y
	STA iNSF_Pointer
	INY
	LDA CuePointers, Y
	STA iNSF_Pointer + 1
	RTS

EndAudioScript:
	LDA #0
	STA iNSF_Offset
	STA iNSF_LoopCounter
	STA iNSF_LoopOffset
	STA iNSF_Pointer
	STA iNSF_Pointer + 1
	STA iNSF_Cue
	RTS

LoadAudioScriptCommand:
	INY
	STY iNSF_Offset
	SBC #nsf_cmd_start
	ASL A
	TAY
	LDA AudioScriptCommandPointers, Y
	SEC
	SBC #1
	INY
	TAX
	LDA AudioScriptCommandPointers, Y
	SBC #0
	PHA
	TXA
	PHA
	LDY iNSF_Offset
	; jump to the new pointer
	RTS

AudioScriptCommandPointers:
	dw	NSF_MusicOff
	dw	NSF_MusicOn
	dw	NSF_WaitSFX
	dw	NSF_SkipFrames
	dw	NSF_Silence
	dw	NSF_PlayMusic
	dw	NSF_PlayCry
	dw	NSF_PlaySfx
	dw	NSF_ExtendScript
	dw	NSF_RestartScript
	dw	NSF_NewScript
	dw	NSF_OffsetJump
	dw	NSF_Loop
	dw	NSF_Break

NSF_None:
	RTS

NSF_MusicOff:
	LDA #0
	STA zMusicPlaying
	RTS

NSF_MusicOn:
	LDA #1
	STA zMusicPlaying
	RTS

NSF_WaitSFX:
	JSR CheckSFX
	RCC
	DEC iNSF_Offset
	RTS

NSF_SkipFrames:
	LDA (zCurTrackAudioPointer), Y
	INY
	STY iNSF_Offset
	JMP SkipMusic

NSF_ExtendScript:
	LDA iNSF_Offset
	CLC
	ADC iNSF_Pointer
	STA iNSF_Pointer
	LDA #0
	ADC iNSF_Pointer + 1
	STA iNSF_Pointer + 1
	LDA iNSF_Pointer
	STA zCurTrackAudioPointer
	LDA iNSF_Pointer + 1
	STA zCurTrackAudioPointer + 1
	RTS

NSF_RestartScript:
	LDA (zCurTrackAudioPointer), Y
	STA iNSF_Pointer
	INY
	LDA (zCurTrackAudioPointer), Y
	STA iNSF_Pointer + 1
	LDA #0
	STA iNSF_Offset
	LDA iNSF_Pointer
	STA zCurTrackAudioPointer
	LDA iNSF_Pointer + 1
	STA zCurTrackAudioPointer + 1
	RTS

NSF_OffsetJump:
	LDA (zCurTrackAudioPointer), Y
	TAY
	STY iNSF_Offset
	RTS

NSF_NewScript:
	LDA (zCurTrackAudioPointer), Y
	STA iNSF_Cue
	; initialize area
	LDY #iNSF_WorkAreaEnd - iNSF_WorkArea
	LDA #0
@Loop:
	DEY
	STA iNSF_WorkArea, Y
	BNE @Loop
	PLA ; returning would glitch out the audio script engine
	PLA
	JMP UpdateAudioScript

NSF_Silence:
	LDA (zCurTrackAudioPointer), Y
	STA zMusicSilenceID
	INY
	LDA (zCurTrackAudioPointer), Y
	STA zMusicSilence
	INY
	STY iNSF_Offset
	; wait for cut
	RTS

NSF_PlayMusic:
	LDA (zCurTrackAudioPointer), Y
	INY
	STY iNSF_Offset
	LDY #0
	JSR PlayMusic
	TAY
	JSR PlayMusic
	LDY iNSF_Offset
	RTS

NSF_PlayCry:
	JSR NSF_GetSoundID
	JMP PlayCry

NSF_PlaySfx:
	JSR NSF_GetSoundID
	JMP PlaySFX

NSF_Loop:
	LDA (zCurTrackAudioPointer), Y
	INY
	STA iNSF_LoopCounter
	STY iNSF_LoopOffset
	STY iNSF_Offset
	RTS

NSF_Break:
	DEC iNSF_LoopCounter
	REQ
	LDA iNSF_LoopOffset
	STA iNSF_Offset
	RTS

NSF_GetSoundID:
	LDA (zCurTrackAudioPointer), Y
	INY
	STY iNSF_Offset
	TAY
	RTS

CuePointers:
	dw	iNSF_ScriptArea