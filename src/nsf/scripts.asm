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
	INC iNSF_Delay
	PLA ; returning means running the same script byte
	PLA
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
	STA iNSF_Offset
	ADC iNSF_Pointer + 1
	STA iNSF_Pointer + 1
	RTS

NSF_RestartScript:
	LDA (zCurTrackAudioPointer), Y
	STA iNSF_Pointer
	INY
	LDA (zCurTrackAudioPointer), Y
	STA iNSF_Pointer + 1
	LDA #0
	STA iNSF_Offset
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
	DEY
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
	dw	NSF_GSIntro
	dw	NSF_GSIntroWCries
	dw	NSF_HallOfFame
	dw	NSF_TI1
	dw	NSF_TI2
	dw	NSF_TI3

NSF_GSIntro:
	db	$f7,$52,$f1
	db	$fe,5
	db	$f1
	db	$ff
	db	$1c
	db	$f2,$08
	db	$f3,$f1
	db	$ec
	db	$f7,$53,$06
	db	$0e
	db	$f9,$a8,$50
	db	$f9,$a8,$50
	db	$f9,$a8,$52
	db	$04
	db	$81
	db	$04
	db	$f9,$a7,$40
	db	$80
	db	$40
	db	$f7,$01,$01
	db	$00

NSF_GSIntroWCries:
	db	$f7,$52,$f1
	db	$fe,5
	db	$f1
	db	$ff
	db	$1c
	db	$f2,$08
	db	$f3,$f1
	db	$ec
	db	$f7,$53,$06
	db	$0e
	db	$f8,$98,$50
	db	$f8,$9b,$50
	db	$f8,$9e,$52
	db	$04
	db	$81
	db	$04
	db	$f9,$a7,$40
	db	$80
	db	$40
	db	$f7,$01,$01
	db	$00

NSF_HallOfFame:
	db	$f7,	MUSIC_HALL_OF_FAME,	$f1
	db	$f8,	MACHAMP,$f4,		$f1
	db	$f8,	TYPHLOSION,$f4,		$f1
	db	$f8,	AMPHAROS,$f4,		$f1
	db	$f8,	GENGAR,$f4,		$f1
	db	$f8,	ALAKAZAM,$f4,		$f1
	db	$f8,	GOLEM,$f4,		$f1
	db	$40
	db	$f7,	MUSIC_NONE
	db	$f9,	SFX_ITEM
	db	$f4
	db	$30
	db	$f7,	MUSIC_CREDITS
	db	$00


























NSF_TI1:
	db	$f1
	db	$f1
	db	$f9,SFX_TACKLE
	db	$fe,6

	db	2*60
	db	$f9,SFX_HIT_END_OF_EXP_BAR

REPT 7 ; 7*4 = 28
	db	4*60
ENDR
	db	2*60
	db	$f9,SFX_SHINE

	db	$ff
	db	$f9,SFX_ITEM
	db	$00

NSF_TI2:
	db	$f1
	db	$f1
	db	$f9,SFX_TACKLE
	db	$fe,30

	db	2*60
	db	$f9,SFX_HIT_END_OF_EXP_BAR

	db	3*60
	db	$f9,SFX_SHINE

	db	$ff
	db	$f9,SFX_ITEM
	db	$00

NSF_TI3:
	db	$f1
	db	$f1
	db	$f9,SFX_TACKLE
	db	$fe,30

	db	1*60
	db	$f9,SFX_HIT_END_OF_EXP_BAR

	db	3*60
	db	$f9,SFX_SHINE

	db	$ff
	db	$f9,SFX_ITEM
	db	$00
