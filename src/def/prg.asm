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
PRG_Cries:	.dsb 1
PRG_DPCM0:	.dsb 1
PRG_DPCM1:	.dsb 1
PRG_DPCM2:	.dsb 1
PRG_DPCM3:	.dsb 1
PRG_DPCM4:	.dsb 1
PRG_MonCries:	.dsb 1
		.dsb $72
IFNDEF NSF_FILE
	PRG_Home:
ELSE
	PRG_Home = 0
ENDIF
.ende

; PRG_RAM
.enum 0
RAM_MAIN:	.dsb 1
RAM_SAVE:	.dsb 1
.ende
