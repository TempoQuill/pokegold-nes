
.base $8000
.include "src/audio/engine.asm"
.include "src/audio/music-pointers.asm"
.include "src/audio/music/nothing.asm"
.include "src/audio/cry-pointers.asm"
.include "src/audio/sfx-pointers.asm"
.include "src/audio/sfx-audio.asm"
Audio_SFX_END:
IF Audio_SFX_END > $a000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $1a000
.include "src/audio/music/route1.asm"
.include "src/audio/music/route3.asm"
.include "src/audio/music/route11.asm"
.include "src/audio/music/kantogymbattle.asm"
.include "src/audio/music/kantotrainerbattle.asm"
.include "src/audio/music/kantowildbattle.asm"
.include "src/audio/music/pokemoncenter.asm"
.include "src/audio/music/looklass.asm"
.include "src/audio/music/lookofficer.asm"
.include "src/audio/music/route2.asm"
.include "src/audio/music/mtmoon.asm"
.include "src/audio/music/showmearound.asm"
Music0_End:
IF Music0_End > $1c000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $28000
.include "src/audio/music/violetcity.asm"
.include "src/audio/music/route29.asm"
.include "src/audio/music/halloffame.asm"
.include "src/audio/music/healpokemon.asm"
.include "src/audio/music/evolution.asm"
.include "src/audio/music/printer.asm"

.include "src/audio/music/viridiancity.asm"
.include "src/audio/music/celadoncity.asm"
.include "src/audio/music/wildpokemonvictory.asm"
.include "src/audio/music/gymleadervictory.asm"
.include "src/audio/music/mtmoonsquare.asm"
.include "src/audio/music/gym.asm"
.include "src/audio/music/pallettown.asm"
.include "src/audio/music/profoakspokemontalk.asm"
.include "src/audio/music/profoak.asm"
.include "src/audio/music/lookrival.asm"
.include "src/audio/music/surf.asm"
Music1_End:
IF Music1_End > $2a000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $3a000
.include "src/audio/music/nationalpark.asm"
.include "src/audio/music/azaleatown.asm"
.include "src/audio/music/unioncave.asm"
.include "src/audio/music/johtowildbattle.asm"
.include "src/audio/music/cherrygrovecity.asm"
.include "src/audio/music/lookyoungster.asm"
.include "src/audio/music/tintower.asm"
.include "src/audio/music/pokemonmarch.asm"
.include "src/audio/music/lookhiker.asm"
Music2_End:
IF Music2_End > $3c000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $48000
.include "src/audio/music/credits.asm"

.include "src/audio/music/route34.asm"
.include "src/audio/music/rivalbattle.asm"
.include "src/audio/music/rocketbattle.asm"
.include "src/audio/music/goldenrodcity.asm"
.include "src/audio/music/titlescreen.asm"
.include "src/audio/music/trainervictory.asm"
Music3_End:
IF Music3_End > $4a000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $5a000
.include "src/audio/music/theend.asm"

.include "src/audio/music/gamecorner.asm"
.include "src/audio/music/bicycle.asm"
.include "src/audio/music/ecruteakcity.asm"
.include "src/audio/music/magnettrain.asm"
.include "src/audio/music/lavendertown.asm"
Music4_End:
IF Music4_End > $5c000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $68000
.include "src/audio/cries.asm"
MonCries_End:
IF MonCries_End > $6a000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $7a000
; pokemon cries
.include "src/data/pokemon-cries.asm"
CryCoord_End:
IF CryCoord_End > $7c000
	ERROR "Bank grew too big. Must be within 8K of memory."
ENDIF
.align $2000, $00

.base $c000
; dpcm
.incbin "src/data/dmc/bank-1.bin"
.align $2000, $55

.base $c000
; dpcm
.incbin "src/data/dmc/bank-2.bin"
.align $2000, $55

.base $c000
; dpcm
.incbin "src/data/dmc/bank-3.bin"
.align $2000, $55

.base $c000
; dpcm
.incbin "src/data/dmc/bank-4.bin"
.align $2000, $55

.base $c000
; dpcm
.incbin "src/data/dmc/bank-5.bin"
.align $2000, $55
