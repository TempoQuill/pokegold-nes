LOAD:
	JMP UpdateSound

INIT:
	LDY #0
	JSR PlayMusic
	TAY
	INY
	JMP PlayMusic

PLAY:
	JMP UpdateSound
