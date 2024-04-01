	;	command/RAM	string		text
NurseMornText:
	db	TX_START,			"Good morning! Welcome to our "
	db	TX_LINE,	_POKE_,		"MON CENTER."
	db	TX_DONE

NurseDayText:
	db	TX_START,			"Hello! Welcome to our"
	db			_POKE,		"MON"
	db	TX_LINE,			"CENTER."
	db	TX_DONE

NurseNiteText:
	db	TX_START,			"Good evening! You#e out late."
	db	TX_LINE,			"Welcome to our "
	db			_POKE_,		"MON CENTER."
	db	TX_DONE

NurseAskHealText:
	db	TX_START,			"We can heal your "
	db			_POKE_,		"MON to"
	db	TX_LINE,			"perfect health."

	db	TX_PARA,			"Shall we heal your "
	db			_POKE_,		"MON?"
	db	TX_DONE

NurseTakePokemonText:
	db	TX_START,			"OK, may I see your "
	db			_POKE_,		"MON?"
	db	TX_DONE

NurseReturnPokemonText:
	db	TX_START,			"Thank you for waiting. Your"
	db	TX_LINE,	_POKE_,		"MON are fully healed."
	db	TX_DONE

NurseGoodbyeText:
	db	TX_START,			"We hope to see you again."
	db	TX_DONE

NursePokerusText:
	db	TX_START,			"Your "
	db			_POKE_,		"MON appear to have"
	db	TX_LINE,			"tiny life forms stuck to them."

	db	TX_PARA,			"Your "
	db			_POKE_,		"MON are healthy and"
	db	TX_LINE,			"seem to be fine."

	db	TX_PARA,			"But we can= tell you anything"
	db	TX_LINE,			"more at a "
	db			_POKE_,		"MON CENTER."
	db	TX_DONE

DifficultBookshelfText:
	db	TX_START,			"It> full of difficult books."
	db	TX_DONE

PictureBookshelfText:
	db	TX_START,			"A whole collection of "
	db			_POKE_,		"MON"
	db	TX_LINE,			"picture books!"
	db	TX_DONE

MagazineBookshelfText:
	db	TX_START,	_POKE_,		"MON magazines_"
	db	TX_LINE,	_POKE_,		"MON PAL,"

	db	TX_PARA,	_POKE_,		"MON HANDBOOK,"
	db	TX_LINE,	_POKE_,		"MON GRAPH_"
	db	TX_DONE

TeamRocketOathText:
	db	TX_START,			"TEAM ROCKET OATH"

	db	TX_PARA,			"Steal "
	db			_POKE_,		"MON for profit!"

	db	TX_PARA,			"Exploit "
	db			_POKE_,		"MON for profit!"

	db	TX_PARA,			"All "
	db			_POKE_,		"MON exist for the"
	db	TX_LINE,			"glory of TEAM ROCKET!"
	db	TX_DONE

IncenseBurnerText:
	db	TX_START,			"What is this? Oh, it> an"

	db	TX_PARA,			"incense burner!"
	db	TX_DONE

MerchandiseShelfText:
	db	TX_START,			"Lots of "
	db			_POKE_,		"MON merchandise!"
	db	TX_DONE

LookTownMapText:
	db	TX_START,			"It> the TOWN MAP."
	db	TX_DONE

WindowText:
	db	TX_START,			"My reflection! Lookin' good!"
	db	TX_DONE

TVText:
	db	TX_START,			"It> a TV."
	db	TX_DONE

HomepageText:
	db	TX_START,	_POKE_,		"MON JOURNAL"
	db	TX_LINE,			"HOME PAGE_"

	db	TX_PARA,			"It hasn= been"
	db	TX_LINE,			"updated_"
	db	TX_DONE

; not used
	db	TX_START,	_POKE_,		"MON RADIO! Call in with"
	db	TX_LINE,			"your requests now!"
	db	TX_DONE

TrashCanText:
	db	TX_START,			"There> nothing in"
	db	TX_LINE,			"here_"
	db	TX_DONE

; not used
	db	TX_START,			"A "
	db			_POKE_,		"MON may be able to move"
	db	TX_LINE,			"this."
	db	TX_DONE

; not used
	db	TX_START,			"Maybe a "
	db			_POKE_,		"MON can break"
	db	TX_LINE,			"this."
	db	TX_DONE

PokecenterSignText:
	db	TX_START,			"Heal Your "
	db			_POKE_,		"MON!"
	db	TX_LINE,	_POKE_,		"MON CENTER"
	db	TX_DONE

MartSignText:
	db	TX_START,			"For All Your "
	db			_POKE_,		"MON Needs"
	db	TX_LINE,	_POKE_,		"MON MART"
	db	TX_DONE

ContestResults_ReadyToJudgeText:
	db	TX_START,			"We will now judge the "
	db			_POKE_,		"MON"
	db	TX_LINE,			"you^e caught."

	db	TX_PARA,	_SLOT_ELIPSES
	db	TX_LINE,	_SLOT_ELIPSES

	db	TX_PARA,			"We have chosen the winners!"
	db	TX_LINE,			"Are you ready for this?"

	db	TX_DONE

AskNumber1MText:
	db	TX_START,			"Wow! You#e pretty tough."
	db	TX_LINE,			"Could I get your phone number?"

	db	TX_PARA,			"I*l call you for a rematch."
	db	TX_DONE

AskNumber2MText:
AskNumber2FText:
	db	TX_START,			"Register the phone number?"
	db	TX_DONE

RegisteredNumberMText:
RegisteredNumberFText:
	db	TX_START,	_PLAYER_,	" registered "
	db	TX_RAM
	dw	wStringBuffer3
	db	TX_LINE,			">"
	db					"number."
	db	TX_DONE

NumberAcceptedMText:
	db	TX_START,			"I*l call you if anything comes"
	db	TX_LINE,			"up."
	db	TX_DONE

NumberDeclinedMText:
	db	TX_START,			"Oh, OK_ Just talk to me if you"
	db	TX_LINE,			"want to get my phone number."
	db	TX_DONE

PhoneFullMText:
PhoneFullFText:
	db	TX_START,			"Your phone doesn= have enough"
	db	TX_LINE,			"memory for more numbers."
	db	TX_DONE

RematchMText:
	db	TX_START,			"I was waiting for you. Let>"
	db	TX_LINE,			"battle!"
	db	TX_DONE

AskNumber1FText:
	db	TX_START,			"Wow, you#e good at battling."
	db	TX_LINE,			"Want to give me your phone"
	db	TX_CONT,			"number?"

	db	TX_PARA,			"I*l phone you for another
	db	TX_LINE,			"battle."
	db	TX_DONE

NumberAcceptedFText:
	db	TX_START,			"I*l call you if something> up."
	db	TX_DONE

NumberDeclinedFText:
	db	TX_START,			"Oh, fine then_ If you want to"
	db	TX_LINE,			"get my phone number, just tell"
	db	TX_CONT,			"me."
	db	TX_DONE

RematchFText:
	db	TX_START,			"I waited for you. Let> battle!"
	db	TX_DONE

ContestResults_PlayerWonAPrizeText:
	db	TX_START,	_PLAYER_,	" wins the No. "
	db	TX_RAM
	dw	wStringBuffer3
	db					" prize,"
	db	TX_LINE,			"a "
	db	TX_RAM
	dw	wStringBuffer4
	db	TX_START,			"!"
	db	TX_DONE

ReceivedItemText:
	db	TX_START,	_PLAYER_,	" received "
	db	TX_RAM
	dw	wStringBuffer4
	db					"."
	db	TX_DONE

ContestResults_JoinUsNextTimeText:
	db	TX_START,			"Please join us for the next"
	db	TX_LINE,			"Contest!"
	db	TX_DONE

ContestResults_ConsolationPrizeText:
	db	TX_START,			"Everyone else getsa BERRY as"
	db	TX_LINE,			"a con solation prize!"
	db	TX_DONE

ContestResults_DidNotWinText:
	db	TX_START,			"We hope you do better next"
	db	TX_LINE,			"time."
	db	TX_DONE

ContestResults_ReturnPartyText:
	db	TX_START,			"We*l return the "
	db			_POKE_,		"MON we"
	db	TX_LINE,			"kept for you. Here you go!"
	db	TX_DONE

ContestResults_PartyFullText:
	db	TX_START,			"Your party> full, so the "
	db			_POKE_,		"-"
	DB	TX_LINE,			"MON was sent to your BOX in"
	db	TX_CONT,			"BILL> PC."
	db	TX_DONE

GymStatue_CityGymText:
	db	TX_START
	db	TX_RAM
	dw	wStringBuffer3
	db					" "
	db			_POKE_,		"MON GYM"
	db	TX_DONE

GymStatue_WinningTrainersText:
	db	TX_START,			"LEADER: "
	db	TX_RAM
	dw	wStringBuffer4
	db	TX_LINE,			"WINNING TRAINERS: "
	db			_PLAYER_
	db	TX_DONE

CoinVendor_WelcomeText:
	db	TX_START,			"Welcome to the GAME CORNER."
	db	TX_DONE

CoinVendor_NoCoinCaseText:
	db	TX_START,			"Do you need game coins? Oh,"
	db	TX_LINE,			"you don= have a COIN CASE for"
	db	TX_CONT,			"your coins."
	db	TX_DONE

CoinVendor_IntroText:
	db	TX_START,			"Do you need some game coins?"
	db	TX_LINE,			"It costs $1000 for 50 coins."
	db	TX_CONT,			"Do you want some?"
	db	TX_DONE

CoinVendor_Buy50CoinsText:
	db	TX_START,			"Thank you! Here are 50 coins."
	db	TX_DONE

CoinVendor_Buy500CoinsText:
	db	TX_START,			"Thank you! Here are 500 coins."
	db	TX_DONE

CoinVendor_NotEnoughMoneyText:
	db	TX_START,			"You don= have enough money."
	db	TX_DONE

CoinVendor_CoinCaseFullText:
	db	TX_START,			"Whoops! Your COIN CASE is"
	db	TX_LINE,			"full."
	db	TX_DONE

CoinVendor_CancelText:
	db	TX_START,			"No coins for you? Come again!"
	db	TX_DONE

BugContestPrizeNoRoomText:
	db	TX_START,			"Oh? Your PACK is full. We*l"
	db	TX_LINE,			"keep this for you today, so"

	db	TX_PARA,			"come back when you make room"
	db	TX_LINE,			"for it."
	db	TX_DONE

HappinessText3:
	db	TX_START,			"Wow! You and your"
	db			_POKE_,		"MON are"
	db	TX_LINE,			"really close!"
	db	TX_DONE

HappinessText2:
	db	TX_START,	_POKE_,		"MON get more friendly if"
	db	TX_LINE,			"you spend time with them."
	db	TX_DONE

HappinessText1:
	db	TX_START,			"You haven= tamed your "
	db			_POKE_,		"MON."
	db	TX_LINE,			"If you aren= nice, it*l pout."
	db	TX_DONE
