.enum $0000
zAudio:
zMusicPlaying:
	.dsb 1
zCurTrackAudioPointer:
	.dsb 2
zCurTrackVolumeEnvAndDuty:
	.dsb 1
zCurTrackLinearEnv:
	.dsb 1
zCurTrackPitchSweep:
	.dsb 1
zCurTrackRawPitch:
	.dsb 2
zCurTrackTemp:
	.dsb 1
zCurNoteDuration:
	.dsb 1
zCurMusicByte:
	.dsb 1
zCurChannel:
	.dsb 1
;zVolume:
	.dsb 1
	.dsb 1
zMusicID:
	.dsb 1
zMusicBank:
	.dsb 1
zMusicHeader:
	.dsb 2
zNoiseSampleAddress:
	.dsb 2
zNoiseSampleDelay:
	.dsb 1
	.dsb 1
zDPCMAddress:
	.dsb 2
zDPCMBank:
	.dsb 1
zDPCMOffset:
	.dsb 1
zDPCMLength:
	.dsb 1
zDPCMPitch:
	.dsb 1
zMusicDrumSet:
	.dsb 1
zSFXDrumSet:
	.dsb 1
zLowHealthAlarm:
	.dsb 1
;zMusicFade:
zMusicSilence:
	.dsb 1
;zMusicFadeCount:
zMusicSilenceCount:
	.dsb 1
;zMusicFadeID:
zMusicSilenceID:
	.dsb 1
zMusicSilenceOffset:
	.dsb 1
	.dsb 5
zCryPitch:
	.dsb 2
zCryLength:
zTempSpeed:
	.dsb 2
;zLastVolume:
zUnusedF9Flag:
	.dsb 1
zSFXPriority:
	.dsb 1
zTempPitch:
	.dsb 1
zChannel1JumpCondition:
	.dsb 1
zChannel2JumpCondition:
	.dsb 1
zChannel3JumpCondition:
	.dsb 1
zChannel4JumpCondition:
	.dsb 1
zChannel5JumpCondition:
	.dsb 1
;zStereoPanningMask:
;zCryTracks:
zSFXDuration:
	.dsb 1
zCurSFX:
	.dsb 1
zCurSlideDistance:
	.dsb 2
zCurSlideRawPitch:
zTempRawPitch:
	.dsb 2
zAudioEnd:
	.dsb 1
	.dsb 1
zMapMusic:
	.dsb 1
zDontPlayMusicOnReload:
	.dsb 1
; pointers
zMonPointer:
	.dsb 2
zOriginPointers:
zOriginBC:
	.dsb 2
zOriginDE:
	.dsb 2
zOriginHL:
	.dsb 2
zTextPointer:
	.dsb 2
	.dsb 2
	.dsb 2
zItemPointer:
	.dsb 2
zMovePointer:
	.dsb 2
zTemp16Bit1:
	.dsb 2
zTemp8Bit1:
	.dsb 1
; math RAM
zMultiplicand:
	.dsb 3
zMultiplier:
	.dsb 1
zDividend:
zProduct:
	.dsb 4
zDivisor:
	.dsb 1
zQuotient:
	.dsb 4
zRemainder:
	.dsb 1
zScratchWord:
	.dsb 6
zRNGPointer:
	.dsb 2
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
	.dsb 1
zScrollX:
	.dsb 1
zScrollY:
	.dsb 1
; 0 - number of CHR banks to switch during NMI
; loop parse from here
; 1 - bank number 8-15 (autoswitch)
; 2 - bank number 0-7
; 3 - bank offset
zCHRWindowQueue:
	.dsb 1
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
	.dsb 3
zCHRWindowQueue_End:
zSavedPointer:
	.dsb 2
zSavedBank:
	.dsb 1
zBattleTurn:
	.dsb 1
zNMITimer:
	.dsb 1
zPlayerState:
	.dsb 1
zPPUMaskMirror:
	.dsb 1
zPPUCtrlMirror:
	.dsb 1
zPPUDataBufferPointer:
	.dsb 2
zWindow1:
	.dsb 1
zWindow2:
	.dsb 1
iStack:
iStackBottom:
	.dsb $ff
iStackTop:
	.dsb 1
iChannel1:
	.dsb 50
iChannel2:
	.dsb 50
iChannel3:
	.dsb 50
iChannel4:
	.dsb 50
iChannel5:
	.dsb 50
iChannel6:
	.dsb 50
iChannel7:
	.dsb 50
iChannel8:
	.dsb 50
iChannel9:
	.dsb 50
iChannel10:
	.dsb 50
iChannelsEnd:

iTempMovePriority:
	.dsb 1
iTempMove:
	.dsb $208
iStringBufferBaseAddress:
	.dsb 2
iStringBufferFlag:
	.dsb 1
iStringBuffer:
	.dsb $100
.ende
iVirtualOAM = $700

; NSF only
.enum iChannelsEnd
; 00 - endscript
; fa - silencce
; fb - music
; fc - cry
; fd - sfx
; fe - loop
; ff - loop_end
iNSF_WorkArea:
iNSF_Delay:
	.dsb 1
iNSF_Pointer:
	.dsb 2
iNSF_Offset:
	.dsb 1
iNSF_LoopOffset:
	.dsb 1
iNSF_LoopCounter:
	.dsb 1
iNSF_WorkAreaEnd:
iNSF_Cue:
	.dsb 1
iNSF_ScriptArea:
.ende