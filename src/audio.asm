
.base $8000
.include "src/audio/engine.asm"
.include "src/audio/music-pointers.asm"
.include "src/audio/music/nothing.asm"
.include "src/audio/cry-pointers.asm"
.include "src/audio/sfx-pointers.asm"

.include "src/audio/music/goldenrodcity.asm"
.include "src/audio/music/titlescreen.asm"
.pad $a000, $00

.base $a000
.include "src/audio/music/route1.asm"
.include "src/audio/music/route3.asm"
.include "src/audio/music/route11.asm"
.include "src/audio/music/gamecorner.asm"
.include "src/audio/music/bicycle.asm"
.include "src/audio/music/ecruteakcity.asm"
.include "src/audio/music/magnettrain.asm"
.pad $c000, $00

.base $8000
.include "src/audio/music/violetcity.asm"
.include "src/audio/music/healpokemon.asm"
.pad $a000, $00

.base $a000
.include "src/audio/music/viridiancity.asm"
.include "src/audio/music/gym.asm"
.include "src/audio/music/cherrygrovecity.asm"
.include "src/audio/music/lookyoungster.asm"
.include "src/audio/music/tintower.asm"
.include "src/audio/music/unioncave.asm"
.include "src/audio/music/pokemonmarch.asm"
.include "src/audio/music/lookhiker.asm"
.pad $c000, $00

.base $c000
; dpcm
.incbin "src/data/dmc/bank-1.bin"
.pad $e000, $55

.base $c000
; dpcm
.incbin "src/data/dmc/bank-2.bin"
.pad $e000, $55
