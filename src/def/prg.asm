.enum $0000
IFDEF NSF_FILE
	.dsb 1
ENDIF
PRG_Audio:	.dsb 1
PRG_Music0:	.dsb 1
PRG_Music1:	.dsb 1
PRG_Music2:	.dsb 1
PRG_Music3:	.dsb 1
PRG_Music4:	.dsb 1
PRG_DPCM0:	.dsb 1
PRG_DPCM1:	.dsb 1
PRG_DPCM2:	.dsb 1
PRG_MonCries:	.dsb 1
		.dsb $75
IFNDEF NSF_FILE
	PRG_Home:
ELSE
	PRG_Home = 0
ENDIF
.ende