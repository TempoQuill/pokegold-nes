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
