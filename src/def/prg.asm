.enum $0000
IFDEF NSF_FILE
	.dsb 1
ENDIF
PRG_Audio:
PRG_Music0:	.dsb 1
PRG_Music1:	.dsb 1
PRG_Music2:
PRG_SFX:
PRG_Cries:
PRG_MonCries:	.dsb 1
PRG_Music3:	.dsb 1
PRG_Music4:	.dsb 1
IFNDEF NSF_FILE
	.dsb 56
ENDIF
PRG_16K_End:
.ende
.enum (PRG_16K_End << 1)
PRG_DPCM0:	.dsb 1
PRG_DPCM1:	.dsb 1
PRG_DPCM2:	.dsb 1
PRG_DPCM3:	.dsb 1
PRG_DPCM4:	.dsb 1
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
