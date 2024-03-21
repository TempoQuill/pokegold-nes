MACRO PHX
	TXA
	PHA
ENDM

MACRO PHY
	TYA
	PHA
ENDM

MACRO PLX
	PLA
	TAX
ENDM

MACRO PLY
	PLA
	TAY
ENDM

MACRO TSB bit
	AND #1 << bit
ENDM

MACRO RSB bit
	AND #$ff ^ (1 << bit)
ENDM

MACRO SSB bit
	ORA #1 << bit
ENDM

MACRO FAB
	EOR #$ff
ENDM

MACRO FSB bit
	EOR #1 << bit
ENDM

MACRO REQ
	BNE +
	RTS
+
ENDM

MACRO RNE
	BEQ +
	RTS
+
ENDM

MACRO RCS
	BCC +
	RTS
+
ENDM

MACRO RCC
	BCS +
	RTS
+
ENDM

MACRO RVS
	BVC +
	RTS
+
ENDM

MACRO RVC
	BVS +
	RTS
+
ENDM

MACRO RMI
	BPL +
	RTS
+
ENDM

MACRO RPL
	BMI +
	RTS
+
ENDM

MACRO dba bank, label
	.db bank
	.dw label
ENDM

MACRO bmuo
	IFDEF NSF_FILE
		PHA
		TXA
		ASL A
		TAX
		PLA
	ENDIF
ENDM

MACRO bdio
	PHA
	TXA
	LSR A
	TAX
	PLA
ENDM

MACRO bso_8000
	IFNDEF NSF_FILE
		STA MMC5_PRGBankSwitch2, X
	ELSE
		ASL A
		STA $5ff8, X
		ORA #1
		STA $5ff9, X
	ENDIF
ENDM

MACRO bsw_8000
	IFNDEF NSF_FILE
		STA MMC5_PRGBankSwitch2
	ELSE
		ASL A
		STA $5ff8
		ORA #1
		STA $5ff9
	ENDIF
ENDM

MACRO bsw_a000
	IFNDEF NSF_FILE
		STA MMC5_PRGBankSwitch3
	ELSE
		ASL A
		STA $5ffa
		ORA #1
		STA $5ffb
	ENDIF
ENDM

MACRO bsw_c000
	IFNDEF NSF_FILE
		STA MMC5_PRGBankSwitch4
	ELSE
		ASL A
		STA $5ffc
		ORA #1
		STA $5ffd
	ENDIF
ENDM

MACRO JEQ label
	BNE +
	JMP label
+
ENDM

MACRO JNE label
	BEQ +
	JMP label
+
ENDM

MACRO JCS label
	BCC +
	JMP label
+
ENDM

MACRO JCC label
	BCS +
	JMP label
+
ENDM

MACRO JVS label
	BVC +
	JMP label
+
ENDM

MACRO JVC label
	BVS +
	JMP label
+
ENDM

MACRO JMI label
	BPL +
	JMP label
+
ENDM

MACRO JPL label
	BMI +
	JMP label
+
ENDM

MACRO JSC condition label
nz = $f0
z = $d0
nc = $b0
c = $90
nv = $70
v = $50
nm = $30
m = $10
	.db condition, (+b - +a)
+a
	JSR label
+b
ENDM

MACRO farcall bank, memory
	PHA
	PHX
	PHY
	LDX #>memory
	LDY #<memory
	LDA #bank
	JSR Farcall
	PLY
	PLX
	PLA
ENDM
