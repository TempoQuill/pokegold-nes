MACRO text address, text
	.dh address
	.dl address
	.db +end - +start
+start
	.db text
+end
ENDM

MACRO attribute address, data
a = ((address & $380) >> 4) + ((address & $1c) >> 2)
	.dh (NAMETABLE_ATTRIBUTE_0 + a)
	.dl (NAMETABLE_ATTRIBUTE_0 + a)
	.db +end - +start
+start
	hex data
+end
ENDM

MACRO OGN origin, offset, x, y
o = offset * 2
t = origin + (y * 32) + x
	LDA #>t
	STA zOriginPointers + o + 1
	LDA #<t
	STA zOriginPointers + o
ENDM

MACRO OGT offset, x, y
o = offset * 2
t = wTilemap + (y * 32) + x
	LDA #>t
	STA zOriginPointers + o + 1
	LDA #<t
	STA zOriginPointers + o
ENDM
