	;	command/RAM	string		text
_ItemUsedText:
	db	TX_START,	_PLAYER_,	" used the "
	db	TX_RAM,				wStringBuffer2
	db					"."
	db	TX_DONE
	
_BallBrokeFreeText:
	db	TX_START,			"Oh no! The "
	db			_POKE_		"MON broke free!"
	db	TX_DONE
	
_BallAppearedCaughtText:
	db	TX_START,			"Aww! It appeared to be caught!"
	db	TX_DONE
	
_BallAlmostHadItText:
	db	TX_START,			"Aargh! Almost had it!"
	db	TX_DONE
	
_BallSoCloseText:
	db	TX_START, 			"Shoot! It was so close too!"
	db	TX_DONE
	
_Text_GotchaMonWasCaught:
	db	TX_START, 			"Gotcha! "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" was"
	db	TX_LINE,			"caught!"
	db	TX_SOUND_CAUGHT_MON
	db	TX_END
	
_NewDexDataText:
	db	TX_START
	db	TX_RAM
	dw	wEnemyMonNickname
	db					"> data was newly"
	db	TX_LINE, 			"added to the"
	db			_POKE_,		"DEX."
	db	TX_SOUND_SLOT_MACHINE_START
	db	TX_PROMPT_BUTTON
	db	TX_END
	
_AskGiveNicknameText:
	db	TX_START,			"Give a nickname to "
	db	TX_RAM
	dw	wStringBuffer1
	db 					"?"
	db	TX_DONE
	
_BallSentToPCText:
	db	TX_START
	db	TX_RAM
	dw	wMonOrItemNameBuffer
	db					" was sent to BILL>"
	db	TX_LINE, 			"PC."
	db	TX_DONE
