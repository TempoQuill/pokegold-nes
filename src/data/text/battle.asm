BattleText_EnemyFled:
	text "Enemy @"
	text_ram wEnemyMonNickname
	text_start
	text " fled!"
	prompt

BattleText_UsersStringBuffer1Activated:
	text "<USER>& @"
	text_ram wStringBuffer1
	text_start
	line "activated!"
	prompt

BecameConfusedText:
	text "<TARGET> became"
	line "confused!"
	prompt
