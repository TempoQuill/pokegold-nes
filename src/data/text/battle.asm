BattleText:: ; used only for BANK(BattleText)
	;	command/RAM	string		text
BattleText_PlayerPickedUpPayDayMoney:
	db	TX_START,	_PLAYER_,	" picked up $"
	db	TX_DECIMAL
	dw	wPayDayMoney
	db			$36,		"!"
	db	TX_PROMPT

WildPokemonAppearedText:
	db	TX_START,			"Wild "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" appeared!"
	db	TX_PROMPT

HookedPokemonAttackedText:
	db	TX_START,			"The hooked "
	db	TX_RAM
	dw	wEnemyMonNickname
	db	TX_LINE,			"attacked!"
	db	TX_PROMPT

PokemonFellFromTreeText:
	db	TX_START
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" fell out of the"
	db	TX_LINE,			"tree!"
	db	TX_PROMPT

WantsToBattleText::
	db	TX_START,	_ENEMY_,	" wants to"
	db	TX_LINE,			"battle!"
	db	TX_PROMPT

BattleText_WildFled:
	db	TX_START,			"Wild "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" fled!"
	db	TX_PROMPT

BattleText_EnemyFled:
	db	TX_START,			"Enemy "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" fled!"
	db	TX_PROMPT

HurtByPoisonText:
	db	TX_START,	_USER_,		" is hurt by"
	db	TX_LINE,			"poison!"
	db	TX_PROMPT

HurtByBurnText:
	db	TX_START,	_USER_,		"> hurt by its"
	db	TX_LINE,			"burn!"
	db	TX_PROMPT

LeechSeedSapsText:
	db	TX_START,			"LEECH SEED saps"
	db	TX_LINE,	_USER_,		"!"
	db	TX_PROMPT

HasANightmareText:
	db	TX_START,	_USER_,		" has a"
	db	TX_LINE,			"NIGHTMARE!"
	db	TX_PROMPT

HurtByCurseText:
	db	TX_START,	_USER_,		"> hurt by the"
	db	TX_LINE,			"CURSE!"
	db	TX_PROMPT

SandstormHitsText:
	db	TX_START,			"The SANDSTORM hits"
	db	TX_LINE,	_USER_,		"!"
	db	TX_PROMPT

PerishCountText:
	db	TX_START,	_USER_,		"> perish count"
	db	TX_LINE,			"is "
	db	TX_DECIMAL
	dw	wTextDecByte
	db			$11,		"!"
	db	TX_PROMPT

BattleText_TargetRecoveredWithItem:
	db	TX_START,	_TARGET_,	" recovered"
	db	TX_LINE,			"with "
	db	TX_RAM
	dw	wStringBuffer1
	db					"."
	db	TX_PROMPT

BattleText_UserRecoveredPPUsing:
	db	TX_START,	_USER_,		" recovered PP"
	db	TX_LINE,			"using "
	db	TX_RAM
	dw	wStringBuffer1
	db					"."
	db	TX_PROMPT

BattleText_TargetWasHitByFutureSight:
	db	TX_START,	_TARGET_,	" was hit by"
	db	TX_LINE,			"FUTURE SIGHT!"
	db	TX_PROMPT

BattleText_SafeguardFaded:
	db	TX_START,	_USER_,		"> SAFEGUARD"
	db	TX_LINE,			"faded!"
	db	TX_PROMPT

BattleText_MonsLightScreenFell:
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_START,			" "
	db			_POKE_,		"MON> LIGHT SCREEN"
	db	TX_LINE,			"fell!"
	db	TX_PROMPT

BattleText_MonsReflectFaded:
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_START,			" "
	db			_POKE_,		"MON> REFLECT faded!"
	db	TX_PROMPT

BattleText_RainContinuesToFall:
	db	TX_START,			"Rain continues to fall."
	db	TX_PROMPT

BattleText_TheSunlightIsStrong:
	db	TX_START,			"The sunlight is strong."
	db	TX_PROMPT

BattleText_TheSandstormRages:
	db	TX_START,			"The SANDSTORM rages."
	db	TX_PROMPT

BattleText_TheRainStopped:
	db	TX_START,			"The rain stopped."
	db	TX_PROMPT

BattleText_TheSunlightFaded:
	db	TX_START,			"The sunlight faded."
	db	TX_PROMPT

BattleText_TheSandstormSubsided:
	db	TX_START,			"The SANDSTORM subsided."
	db	TX_PROMPT

BattleText_EnemyMonFainted:
	db	TX_START,			"Enemy "
	db	TX_RAM
	dw	wEnemyMonNickname
	db	TX_LINE,			" fainted!"
	db	TX_PROMPT

GotMoneyForWinningText:
	db	TX_START,	_PLAYER_,	" got $"
	db	TX_DECIMAL
	dw	 wBattleReward
	db			$36,		" for"
	db	TX_LINE,			"winning!"
	db	TX_PROMPT

BattleText_EnemyWasDefeated:
	db	TX_START,	_ENEMY_,	" was"
	db	TX_LINE,			"defeated!"
	db	TX_PROMPT

TiedAgainstText:
	db	TX_START,			"Tied against"
	db	TX_LINE,	_ENEMY_,	"!"
	db	TX_PROMPT

SentSomeToMomText:
	db	TX_START,	_PLAYER_,	" got $"
	db	TX_DECIMAL
	dw	wBattleReward	
	db			$36,		" for"
	db	TX_LINE,			"winning! Sent some to MOM!"
	db	TX_PROMPT

SentHalfToMomText:
	db	TX_START,			"Sent half to MOM!"
	db	TX_PROMPT

SentAllToMomText:
	db	TX_START,			"Sent all to MOM!"
	db	TX_PROMPT

UnusedRivalLossText: ; unreferenced
	db	TX_START,	_RIVAL_,	": Huh? I should^e"
	db	TX_LINE,			"chosen your "
	db			_POKE_,		"MON!"
	db	TX_PROMPT

BattleText_MonFainted:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" fainted!"
	db	TX_PROMPT

BattleText_UseNextMon:
	db	TX_START,			"Use next "
	db			_POKE_,		"MON?"
	db	TX_DONE

UnusedRivalWinText: ; unreferenced
	db	TX_START,	_RIVAL_,	": Yes! I guess I chose"
	db	TX_LINE,			"a good "
	db			_POKE_,		"MON!"
	db	TX_PROMPT

LostAgainstText:
	db	TX_START,			"Lost against"
	db	TX_LINE,	_ENEMY_,	"!"
	db	TX_PROMPT

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	db	TX_START,	_ENEMY_,	" is about to"
	db	TX_LINE,			"use "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					"."

	db	TX_PARA,			"Will "
	db			_PLAYER_,	" change "
	db			_POKE_,		"MON?"
	db	TX_DONE

BattleText_EnemySentOut:
	db	TX_START,	_ENEMY_,	"sent out"
	db	TX_LINE
	db	TX_RAM
	dw	wEnemyMonNickname
	db					"!"
	db	TX_DONE

BattleText_TheresNoWillToBattle:
	db	TX_START,			"There> no will to battle!"
	db	TX_PROMPT

BattleText_AnEGGCantBattle:
	db	TX_START,			"An EGG can= battle!"
	db	TX_PROMPT

BattleText_CantEscape2:
	db	TX_START,			"Can= escape!"
	db	TX_PROMPT

BattleText_TheresNoEscapeFromTrainerBattle:
	db	TX_START,			"No! There> no running from a"
	db	TX_LINE,			"trainer battle!"
	db	TX_PROMPT

BattleText_GotAwaySafely:
	db	TX_START,			"Got away safely!"
	db	TX_PROMPT

BattleText_UserFledUsingAStringBuffer1:
	db	TX_START,	_USER_,		"fled using a"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

BattleText_CantEscape:
	db	TX_START,			"Can= escape!"
	db	TX_PROMPT

BattleText_UserHurtBySpikes:
	db	TX_START,	_USER_,		"> burt by"
	db	TX_LINE,			"SPIKES!"
	db	TX_PROMPT

RecoveredUsingText:
	db	TX_START,	_TARGET_	" recovered"
	db	TX_LINE,			"using a "
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

BattleText_UsersStringBuffer1Activated:
	db	TX_START,	_USER_,		"> "
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_LINE,			"activated!"
	db	TX_PROMPT

BattleText_ItemsCantBeUsedHere:
	db	TX_START,			"Items can= be used here."
	db	TX_PROMPT

BattleText_MonIsAlreadyOut:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" is already out."
	db	TX_PROMPT

BattleText_MonCantBeRecalled:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db	TX_LINE,			" can= be recalled!"
	db	TX_PROMPT

BattleText_TheresNoPPLeftForThisMove:
	db	TX_START,			"There> no PP left for this"
	db	TX_LINE,			"move!"
	db	TX_PROMPT

BattleText_TheMoveIsDisabled:
	db	TX_START,			"The move is DISABLED!"
	db	TX_PROMPT

BattleText_MonHasNoMovesLeft:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" has no moves"
	db	TX_LINE,			"left!"
	db	TX_DONE

BattleText_TargetsEncoreEnded:
	db	TX_START,	_TARGET_,	"> ENCORE"
	db	TX_LINE,			"ended!"
	db	TX_PROMPT

BattleText_StringBuffer1GrewToLevel:
	db	TX_START
	db	TX_RAM
	dw	wStringBuffer1
	db					" grew to level "
	db	TX_DECIMAL
	dw	wCurPartyLevel
	db			$13,		"!"
	db	TX_SOUND_DEX_FANFARE_50_79
	db	TX_END

BattleText_WildMonIsEating:
	db	TX_START,			"Wild "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" is eating!"
	db	TX_PROMPT

BattleText_WildMonIsAngry:
	db	TX_START,			"Wild "
	db	TX_RAM
	dw	wEnemyMonNickname
	db					" is angry!"
	db	TX_PROMPT

FastAsleepText:
	db	TX_START,	_USER_,		" is fast"
	db	TX_LINE,			"asleep!"
	db	TX_PROMPT

WokeUpText:
	db	TX_START,	_USER_,		" woke up!"
	db	TX_PROMPT

FrozenSolidText:
	db	TX_START,	_USER_,		" is frozen"
	db	TX_LINE,			"solid!"
	db	TX_PROMPT

FlinchedText:
	db	TX_START,	_USER_,		" flinched!"
	db	TX_PROMPT

MustRechargeText:
	db	TX_START,	_USER_,		" must"
	db	TX_LINE,			"recharge!"
	db	TX_PROMPT

DisabledNoMoreText:
	db	TX_START,	_USER_,		"> disabled no"
	db	TX_LINE,			"more!"
	db	TX_PROMPT

IsConfusedText:
	db	TX_START,	_USER_,		" is confused!"
	db	TX_PROMPT

HurtItselfText:
	db	TX_START,			"It hurt itself in its"
	db	TX_LINE,			"confusion!"
	db	TX_PROMPT

ConfusedNoMoreText:
	db	TX_START,	_USER_,		"> confused no"
	db	TX_LINE,			"more!"
	db	TX_PROMPT

BecameConfusedText:
	db	TX_START,	_TARGET_,	" became"
	db	TX_LINE,			"confused!"
	db	TX_PROMPT

BattleText_ItemHealedConfusion:
	db	TX_START,			"A "
	db	TX_RAM
	dw	wStringBuffer1
	db					" rid"
	db	TX_LINE,	_TARGET_,	" of its"
	db	TX_CONT,			"confusion."
	db	TX_PROMPT

AlreadyConfusedText:
	db	TX_START,	_TARGET_,	"> already"
	db	TX_LINE,			"confused!"
	db	TX_PROMPT

BattleText_UsersHurtByStringBuffer1:
	db	TX_START,	_USER_,		"> hurt by"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

BattleText_UserWasReleasedFromStringBuffer1:
	db	TX_START,	_USER_,		" was released"
	db	TX_LINE,			"from "
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

UsedBindText:
	db	TX_START,	_USER_,		" used BIND on"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

WasTrappedText:
	db	TX_START,	_TARGET_,	" was trapped!"
	db	TX_PROMPT

WrappedByText:
	db	TX_START,	_TARGET_,	" was WRAPPED"
	db	TX_LINE,			"by "
	db			_USER_,		"!"
	db	TX_PROMPT

ClampedByText:
	db	TX_START,	_TARGET_,	" was CLAMPED"
	db	TX_LINE,			"by "
	db			_USER_,		"!"
	db	TX_PROMPT

StoringEnergyText:
	db	TX_START,	_USER_,		" is storing"
	db	TX_LINE,			"energy!"
	db	TX_PROMPT

UnleashedEnergyText:
	db	TX_START,	_USER_,		" unleashed"
	db	TX_LINE,			"energy!"
	db	TX_PROMPT

HungOnText:
	db	TX_START,	_TARGET_,	" hung on with"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

EnduredText:
	db	TX_START,	_TARGET_,	" ENDURED the"
	db	TX_LINE,			"hit!"
	db	TX_PROMPT

InLoveWithText:
	db	TX_START,	_USER_,		" is in love"
	db	TX_LINE,			"with "
	db			_TARGET_,	"!"
	db	TX_PROMPT

InfatuationText:
	db	TX_START,	_USER_,		"> infatuation"
	db	TX_LINE,			"kept it from attacking!"
	db	TX_PROMPT

DisabledMoveText:
	db	TX_START,	_USER_,		"> "
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_LINE,			"is DISABLED!"
	db	TX_PROMPT

LoafingAroundText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" is loafing"
	db	TX_LINE,			"around."
	db	TX_PROMPT

BeganToNapText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" began to nap!"
	db	TX_PROMPT

WontObeyText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" won= obey!"
	db	TX_PROMPT

TurnedAwayText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" turned away!"
	db	TX_PROMPT

IgnoredOrdersText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" ignored orders!"
	db	TX_PROMPT

IgnoredSleepingText:
	db	TX_START
	db	TX_RAM
	dw	wBattleMonNickname
	db					" ignored orders_"
	db	TX_LINE,			"sleeping!"
	db	TX_PROMPT

NoPPLeftText:
	db	TX_START,			"But no PP is left for that"
	db	TX_LINE,			"move!"
	db	TX_PROMPT

HasNoPPLeftText:
	db	TX_START,	_USER_,		" has no PP
	db	TX_LINE,			"left for "
	db	TX_RAM
	dw	wStringBuffer2
	db					"!"
	db	TX_PROMPT

WentToSleepText:
	db	TX_START,	_USER_,		" went to"
	db	TX_LINE,			"sleep!"
	db	TX_DONE

RestedText:
	db	TX_START,	_USER_,		" fell asleep"
	db	TX_LINE,			"and became healthy!"
	db	TX_DONE

RegainedHealthText:
	db	TX_START,	_USER_,		" regained"
	db	TX_LINE,			"health!"
	db	TX_PROMPT

AttackMissedText:
AttackMissed2Text:
	db	TX_START,	_USER_,		"> attack"
	db	TX_LINE,			"missed!"
	db	TX_PROMPT

CrashedText:
	db	TX_START,	_USER_,		" kept going"
	db	TX_LINE,			"and crashed!"
	db	TX_PROMPT

UnaffectedText:
	db	TX_START,	_TARGET_,	"> unaffected!"
	db	TX_PROMPT

DoesntAffectText:
	db	TX_START,			"It doesn= affect"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

CriticalHitText:
	db	TX_START,			"A critical hit!"
	db	TX_PROMPT

OneHitKOText:
	db	TX_START,			"It> a one-hit KO!"
	db	TX_PROMPT

SuperEffectiveText:
	db	TX_START,			"It> super-effective!"
	db	TX_PROMPT

NotVeryEffectiveText:
	db	TX_START,			"It> not very effective_"
	db	TX_PROMPT

TookDownWithItText:
	db	TX_START,	_TARGET_,	" took down"
	db	TX_LINE,			"with it, "
	db			_USER_,		"!"
	db	TX_PROMPT

RageBuildingText:
	db	TX_START,	_USER_,		"> RAGE is"
	db	TX_LINE,			"building!"
	db	TX_PROMPT

GotAnEncoreText:
	db	TX_START,	_TARGET_,	" got an"
	db	TX_LINE,			"ENCORE!"
	db	TX_PROMPT

SharedPainText:
	db	TX_START,			"The battlers shared pain!"
	db	TX_PROMPT

TookAimText:
	db	TX_START,	_USER_,		" took aim!"
	db	TX_PROMPT

SketchedText:
	db	TX_START,	_USER_,		" SKETCHED"
	db	TX_LINE,
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

DestinyBondEffectText:
	db	TX_START,	_USER_,		"> trying to"
	db	TX_LINE,			"take its opponent with it!"
	db	TX_PROMPT

SpiteEffectText:
	db	TX_START,	_TARGET_,	"> "
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_LINE,			"was reduced by "
	db	TX_DECIMAL
	dw	wTextDecByte
	db			$11,		"!"
	db	TX_PROMPT

BellChimedText:
	db	TX_START,			"A bell chimed!"
	db	TX_PROMPT

FellAsleepText:
	db	TX_START,	_TARGET_,	" fell asleep!"
	db	TX_PROMPT

AlreadyAsleepText:
	db	TX_START,	_TARGET_,	"> already"
	db	TX_LINE,			"asleep!"
	db	TX_PROMPT

WasPoisonedText:
	db	TX_START,	_TARGET_,	"was poisoned!"
	db	TX_PROMPT

BadlyPoisonedText:
	db	TX_START,	_TARGET_,	"> badly"
	db	TX_LINE,			"poisoned!"
	db	TX_PROMPT

AlreadyPoisonedText:
	db	TX_START,	_TARGET_,	"> already"
	db	TX_LINE,			"poisoned!"
	db	TX_PROMPT

SuckedHealthText:
	db	TX_START,			"Sucked health from"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

DreamEatenText:
	db	TX_START,	_TARGET_,	"> dream was"
	db	TX_LINE,			"eaten!"
	db	TX_PROMPT

WasBurnedText:
	db	TX_START,	_TARGET_,	"was burned!"
	db	TX_PROMPT

DefrostedOpponentText:
	db	TX_START,	_TARGET_,	" was"
	db	TX_LINE,			"defrosted!"
	db	TX_PROMPT

WasFrozenText:
	db	TX_START,	_TARGET_,	" was frozen"
	db	TX_LINE,			"solid!"
	db	TX_PROMPT

WontRiseAnymoreText:
	db	TX_START,	_USER_,		"> "
	db	TX_RAM
	dw	wStringBuffer2
	db	TX_LINE,			" won= rise anymore!"
	db	TX_PROMPT

WontDropAnymoreText:
	db	TX_START,	_TARGET_,	"> "
	db	TX_RAM
	dw	wStringBuffer2
	db	TX_LINE,			" won= drop anymore!"
	db	TX_PROMPT

FledFromBattleText::
	db	TX_START,	_USER_,		" fled from"
	db	TX_LINE,			"battle!"
	db	TX_PROMPT

FledInFearText:
	db	TX_START,	_TARGET_,	" fled in fear!"
	db	TX_PROMPT

BlownAwayText:
	db	TX_START,	_TARGET_,	" was blown"
	db	TX_LINE,			"away!"
	db	TX_PROMPT

PlayerHitTimesText:
	db	TX_START,			"Hit "
	db	TX_DECIMAL
	dw	wPlayerDamage
	db			$11,		" times!"
	db	TX_PROMPT

EnemyHitTimesText:
	db	TX_START,			"Hit "
	db	TX_DECIMAL
	dw	wEnemyDamage
	db			$11,		" times!"
	db	TX_PROMPT

MistText:
	db	TX_START,	_USER_,		"> shrouded in"
	db	TX_LINE,			"MIST!"
	db	TX_PROMPT

ProtectedByMistText:
	db	TX_START,	_TARGET_,	"> protected by"
	db	TX_LINE,			"MIST."
	db	TX_PROMPT

GettingPumpedText:
	db	TX_PAUSE
	db	TX_START,	_USER_,		"> getting"
	db	TX_LINE,			"pumped!"
	db	TX_PROMPT

RecoilText:
	db	TX_START,	_USER_,		"> hit with"
	db	TX_LINE,			"recoil!"
	db	TX_PROMPT

MadeSubstituteText:
	db	TX_START,	_USER_,		" made a"
	db	TX_LINE,			"SUBSTITUTE!"
	db	TX_PROMPT

HasSubstituteText:
	db	TX_START,	_USER_,		" has a"
	db	TX_LINE,			"SUBSTITUTE!"
	db	TX_PROMPT

TooWeakSubText:
	db	TX_START,			"Too weak to make a SUBSTITUTE!"
	db	TX_PROMPT

SubTookDamageText:
	db	TX_START,			"The SUBSTITUTE took damage for"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

SubFadedText:
	db	TX_START,	_TARGET_,	"> SUBSTITUTE"
	db	TX_LINE,			"faded!"
	db	TX_PROMPT

MimicLearnedMoveText:
	db	TX_START,	_USER_,		" learned"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

WasSeededText:
	db	TX_START,	_TARGET_,	" was seeded!"
	db	TX_PROMPT

EvadedText:
	db	TX_START,	_TARGET_,	" evaded the"
	db	TX_LINE,			"attack!"
	db	TX_PROMPT

WasDisabledText:
	db	TX_START,	_TARGET_,	"> "
	db	TX_RAM
	dw	wStringBuffer1
	db	TX_LINE,			"was DISABLED!"
	db	TX_PROMPT

CoinsScatteredText:
	db	TX_START,			"Coins scattered everywhere!"
	db	TX_PROMPT

TransformedTypeText:
	db	TX_START,	_USER_,		" transformed"
	db	TX_LINE,			"into the "
	db	TX_RAM
	dw	wStringBuffer1
	db					"-type!"
	db	TX_PROMPT

EliminatedStatsText:
	db	TX_START,			"All stat changes were"
	db	TX_LINE,			"eliminated!"
	db	TX_PROMPT

TransformedText:
	db	TX_START,	_USER_,		" TRANSFORMED"
	db	TX_LINE,			"into "
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

LightScreenEffectText:
	db	TX_START,	_USER_,		"> SPCL.DEF"
	db	TX_LINE,			"rose!"
	db	TX_PROMPT

ReflectEffectText:
	db	TX_START,	_USER_,		"> DEFENSE"
	db	TX_LINE,			"rose!"
	db	TX_PROMPT

NothingHappenedText:
	db	TX_START,			"But nothing happened."
	db	TX_PROMPT

ButItFailedText:
	db	TX_START,			"But it failed!"
	db	TX_PROMPT

ItFailedText:
	db	TX_START,			"It failed!"
	db	TX_PROMPT

DidntAffect1Text:
DidntAffect2Text:
	db	TX_START,			"It didn= affect"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

HPIsFullText:
	db	TX_START,	_USER_,		"> HP is full!"
	db	TX_PROMPT

DraggedOutText:
	db	TX_START,	_USER_,		" was dragged"
	db	TX_LINE,			"out!"
	db	TX_PROMPT

ParalyzedText:
	db	TX_START,	_TARGET_,	"> paralyzed!"
	db	TX_LINE,			"Maybe it can= attack!"
	db	TX_PROMPT

FullyParalyzedText:
	db	TX_START,	_USER_,		"> fully"
	db	TX_LINE,			"paralyzed!"
	db	TX_PROMPT

AlreadyParalyzedText:
	db	TX_START,	_TARGET_,	"> already"
	db	TX_LINE,			"paralyzed!"
	db	TX_PROMPT

ProtectedByText:
	db	TX_START,	_TARGET_,	"> protected by"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					"!"
	db	TX_PROMPT

MirrorMoveFailedText:
	db	TX_START,			"The MIRROR MOVE failed!"
	db	TX_PROMPT

StoleText:
	db	TX_START,	_USER_,		" stole"
	db	TX_LINE
	db	TX_RAM
	dw	wStringBuffer1
	db					" from its foe!"
	db	TX_PROMPT

CantEscapeNowText:
	db	TX_START,	_TARGET_,	" can= escape"
	db	TX_LINE,			"now!"
	db	TX_PROMPT

StartedNightmareText:
	db	TX_START,	_TARGET_,	" started to"
	db	TX_LINE,			"have a NIGHTMARE!"
	db	TX_PROMPT

WasDefrostedText:
	db	TX_START,	_USER_,		" was"
	db	TX_LINE,			"defrosted!"
	db	TX_PROMPT

PutACurseText:
	db	TX_START,	_USER_,		" cut its own"
	db	TX_LINE,			"HP and put a CURSE on"
	db	TX_CONT,	_TARGET_,	"!"
	db	TX_PROMPT

ProtectedItselfText:
	db	TX_START,	_USER_,		" PROTECTED"
	db	TX_LINE,			"itself!"
	db	TX_PROMPT

ProtectingItselfText:
	db	TX_START,	_TARGET_,	"> PROTECTING"
	db	TX_LINE,			"itself!"
	db	TX_DONE

SpikesText:
	db	TX_START,			"SPIKES scattered all around"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

IdentifiedText:
	db	TX_START,	_USER_,		" identified"
	db	TX_LINE,	_TARGET_,	"!"
	db	TX_PROMPT

StartPerishText:
	db	TX_START,			"Both "
	db			_POKE_,		"MON will faint in 3"
	db	TX_LINE,			"turns!"
	db	TX_PROMPT

SandstormBrewedText:
	db	TX_START,			"A SANDSTORM brewed!"
	db	TX_PROMPT

BracedItselfText:
	db	TX_START,	_USER_,		" braced"
	db	TX_LINE,			"itself!"
	db	TX_PROMPT

FellInLoveText:
	db	TX_START,	_TARGET_,	" fell in love!"
	db	TX_PROMPT

CoveredByVeilText:
	db	TX_START,	_USER_,		"> covered by a"
	db	TX_LINE,			"veil!"
	db	TX_PROMPT

SafeguardProtectText:
	db	TX_START,	_TARGET_,	" is protected"
	db	TX_LINE,			"by SAFEGUARD!"
	db	TX_PROMPT

MagnitudeText:
	db	TX_START,			"Magnitude "
	db	TX_DECIMAL
	dw	wTextDecByte
	db			$11,		"!"
	db	TX_PROMPT

ReleasedByText:
	db	TX_START,	_USER_,		" was released"
	db	TX_LINE,			"by "
	db			_TARGET_,	"!"
	db	TX_PROMPT

ShedLeechSeedText:
	db	TX_START,	_USER_,		" shed LEECH"
	db	TX_LINE,			"SEED!"
	db	TX_PROMPT

BlewSpikesText:
	db	TX_START,	_USER_,		" blew away"
	db	TX_LINE,			"SPIKES!"
	db	TX_PROMPT

DownpourText:
	db	TX_START,			"A downpour started!"
	db	TX_PROMPT

SunGotBrightText:
	db	TX_START,			"The sunlight got bright!"
	db	TX_PROMPT

BellyDrumText:
	db	TX_START,	_USER_,		" cut its HP"
	db	TX_LINE,			"and maximized ATTACK!"
	db	TX_PROMPT

CopiedStatsText:
	db	TX_START,	_USER_,		" copied the"
	db	TX_LINE,			"stat changes of"
	db	TX_CONT,	_TARGET_,	"!"
	db	TX_PROMPT

ForesawAttackText:
	db	TX_START,	_USER_,		" foresaw an"
	db	TX_LINE,			"attack!"
	db	TX_PROMPT

BeatUpAttackText::
	db	TX_START
	db	TX_RAM
	dw	wStringBuffer1
	db					"> attack!"
	db	TX_DONE

PresentFailedText:
	db	TX_START,	_TARGET_,	" can= receive"
	db	TX_LINE,			"the gift!"
	db	TX_PROMPT

IgnoredOrders2Text:
	db	TX_START,	_USER_,		" ignored"
	db	TX_LINE,			"orders!"
	db	TX_PROMPT
