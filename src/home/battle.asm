SetPlayerTurn:
	LDA #0
	STA zBattleTurn
	RTS

SetEnemyTurn:
	LDA #1
	STA zBattleTurn
	RTS

StdBattleTextbox:
	RTS

BattleRandom:
	RTS