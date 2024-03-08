.include "config.asm"
.include "header.asm"
.include "src/ram.asm"
.include "src/def.asm"
.include "src/macros.asm"

IFDEF NSF_FILE
	.base $e000
	.include "src/home/nsf.asm"
	.include "src/home/audio.asm"
	.pad $10000, $00
ENDIF

; audio
.include "src/audio.asm"

.base $a000
; pokemon cries
.include "src/data/pokemon-cries.asm"
.pad $c000, $00

IFNDEF NSF_FILE
	.base $2000
	.dsb ($7b * $2000), $00

	.base $e000
	.include "src/home.asm"
	IRQ:
		RTI
	.pad $fffa, $00
	NESVectorTables:
		.dw NMI   ; runs every frame
		.dw RESET ; boots up the game
		.dw IRQ   ; dummied out
ENDIF
