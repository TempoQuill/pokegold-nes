_ItemUsedText:
	db	TX_START,	_PLAYER_,	" used the"
	db	TX_LINE,				"@" ; made item name appear in 2nd line for more space
	text_ram wStringBuffer2
	db	TX_START,				"."
	db	TX_DONE
	
_BallBrokeFreeText:
	db	TX_START,				"Oh no! The "
	db				_POKE_
	db 							"MON broke"
	db	TX_LINE,				"free!"
	db	TX_DONE
	
_BallAppearedCaughtText:
	db	TX_START,				"Aww! It appeared to be"
	db	TX_LINE,				"caught!"
	db	TX_DONE
	
_BallAlmostHadItText:
	db	TX_START,				"Aargh!"
	db	TX_LINE,				"Almost had it!"
	db	TX_DONE
	
_BallSoCloseText:
	db	TX_START, 				"Shoot! It was so close"
	db	TX_LINE, 				"too!"
	db	TX_DONE
	
_Text_GotchaMonWasCaught:
	db	TX_START, 				"Gotcha! @"
	text_ram wEnemyMonNickname
	db							" was"
	db	TX_LINE,				"caught!"
	sound_caught_mon
	text_end
	
_NewDexDataText:
	dbw	TX_RAM,					wEnemyMonNickname
	db	TX_START,				"> data was"
	db	TX_LINE, 				"newly added to the #DEX.@"
	sound_slot_machine_start
	text_promptbutton
	text_end
	
_AskGiveNicknameText:
	db	TX_START,				"Give a nickname to"
	db	TX_LINE,				"@"
	text_ram wStringBuffer1
	db 	TX_START,				"?"
	db	TX_DONE
	
_BallSentToPCText:
	text_ram wMonOrItemNameBuffer
	db	TX_START,				" was sent to"
	db	TX_LINE, 				"BILL> PC."
	db	TX_DONE
