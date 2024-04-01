SetPlayerTurn:
	LDA #0
	JMP SetTurn

SetEnemyTurn:
	LDA #1

SetTurn:
	STA zBattleTurn
	RTS

StdBattleTextbox:
	RTS

BattleRandom:
	RTS

GetPartyLocation:
	RTS

