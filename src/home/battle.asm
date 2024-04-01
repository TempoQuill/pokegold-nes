SetPlayerTurn:
	LDA #0
	BEQ SetTurn

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

