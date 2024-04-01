.include "config.asm"
.include "header.asm"
.include "src/def.asm"
.include "src/ram.asm"
.include "src/macros.asm"

IFDEF NSF_FILE

	.base $e000
	.include "src/home/nsf.asm"
	.include "src/home/audio.asm"
	.include "src/nsf/scripts.asm"
	db	78 % 8
	.pad $10000, $00
	.dsb $2000, $00

ELSE

	.dsb (34 * $4000), $00

ENDIF

; audio
.include "src/audio.asm"

IFNDEF NSF_FILE

	.dsb (21 * $4000), $00

ENDIF

.include "src/dmc.asm"

IFNDEF NSF_FILE
	.base $e000
	.include "src/home.asm"
	IRQ:
		RTI
	.pad $fffa, $00
	NESVectorTables:
		.dw NMI   ; runs every frame
		.dw RESET ; boots up the game
		.dw IRQ   ; dummied out
	.include "src/chr.asm"
ENDIF
