ActivateRedsSNES:

; IDDJY Note: when using custom stats, it takes a while to load the trainers' data
; the slowness is due to the calculation of the stats of all pokemon in one go, whereas in the original game:
; - for the enemy the stats ignore Stat Exp and are calculated only when the pokemon enters battle
; - for the player, the stats are precalculated before battle
; there isn't really any fix for this, so I just added a loading screen
; slowness is caused by high Stat Exp values, since the game needs to compute their square root for each stat

	; clear the screen
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	call Delay3
	xor a
	ld [hWY], a
	call SaveScreenTilesToBuffer1
	call ClearScreen
	call UpdateSprites
	call LoadFontTilePatterns

	ld a, MUSIC_GYM
	ld c, BANK(Music_Gym)
	call PlayMusic

	call DisplaySetupMenu

.loop
	call Delay3
	callab SetupBattle_PrintPlayerClass
	callab SetupBattle_PrintPlayerName
	callab SetupBattle_PrintTrainerClass
	callab SetupBattle_PrintTrainerName
	call SetupBattle_PrintLevel
	call SetupBattle_PrintStats
	call SetupBattle_PrintItems
	call SetupBattle_PrintPPs
	call SetupBattle_PrintMoves
	call SetupBattle_PrintMusic
	call SetupBattle_PrintCursor
	
	call JoypadLowSensitivity
	ld a, [hJoy5]
	bit BIT_D_UP, a
	jr nz, .upPressed
	bit BIT_D_DOWN, a
	jr nz, .downPressed
	bit BIT_D_RIGHT, a
	jr nz, .rightPressed
	bit BIT_D_LEFT, a
	jp nz, .leftPressed
	bit BIT_A_BUTTON, a
	jr nz, .APressed
	bit BIT_B_BUTTON, a
	jr nz, .BPressed
	jr .loop

.upPressed								; UP
	ld a, [wBattleSetupMenuPos]
	and a
	jr nz, .noUpWrap
	ld a, MENU_MAX_INDEX
	jr .applyUp
.noUpWrap
	dec a
.applyUp
	ld [wBattleSetupMenuPos], a
	jr .loop

.downPressed							; DOWN
	ld a, [wBattleSetupMenuPos]
	cp MENU_MAX_INDEX
	jr nz, .noDownWrap
	xor a
	jr .applyDown
.noDownWrap
	inc a
.applyDown
	ld [wBattleSetupMenuPos], a
	jr .loop

.BPressed								; B
	jp ReturnToRedsRoom

.APressed								; A
	ld a, [wBattleSetupMenuPos]
	cp MENU_LEVEL_POS
	jr nz, .notLevel
	call SetupBattle_ClearLevel
	ld hl, wLevelScaling				; pressing A on the level parameter increases it by 5
	inc [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	inc [hl]
	jp .loop
.notLevel
	cp MENU_START_BATTLE_POS			; pressing A on Start Battle starts the battle (duh)
	jr nz, .notStartBattle
	call SetupBattle_EraseCursor
	jp .startBattle
.notStartBattle
	cp MENU_TRAINER1_CLASS_POS
	jr nz, .notTrainer1Class
	call SetupBattle_DisplayClass1
	jp .loop
.notTrainer1Class
	cp MENU_TRAINER1_ID_POS
	jr nz, .notTrainer1ID
	call SetupBattle_DisplayTeam1
	jp .loop
.notTrainer1ID
	cp MENU_TRAINER2_CLASS_POS
	jr nz, .notTrainer2Class
	call SetupBattle_DisplayClass2
	jp .loop
.notTrainer2Class
	cp MENU_TRAINER2_ID_POS
	jp nz, .loop
	call SetupBattle_DisplayTeam2
	jp .loop

.rightPressed							; RIGHT
	ld a, [wBattleSetupMenuPos]
	and a
	jr nz, .notFirstPosition
	call SetupBattle_ClearTrainer1Class
	call SetupBattle_ClearTrainer1Name
	ld hl, wPlayerClass
	ld bc, wPlayerNo
	jr .advanceTrainerClassSelection
.notFirstPosition
	dec a
	jr nz, .notSecondPosition
	call SetupBattle_ClearTrainer1Name
	ld hl, wPlayerNo
	jr .advanceSelection
.notSecondPosition
	dec a
	jr nz, .notThirdPosition
	call SetupBattle_ClearTrainer2Class
	call SetupBattle_ClearTrainer2Name
	ld hl, wTrainerClass
	ld bc, wTrainerNo
	jr .advanceTrainerClassSelection
.notThirdPosition
	dec a
	jr nz, .notFourthPosition
	call SetupBattle_ClearTrainer2Name
	ld hl, wTrainerNo
	jr .advanceSelection
.notFourthPosition
	dec a
	jr nz, .notFifthPosition
	call SetupBattle_ClearLevel
	ld hl, wLevelScaling
	jr z, .advanceSelection
.notFifthPosition
	dec a
	jr nz, .notSixthPosition
	call SetupBattle_ClearStats
	call SetupBattle_ToggleCustomDVsAndStatExp
	jp .loop
.notSixthPosition
	dec a
	jr nz, .notSeventhPosition
	call SetupBattle_ClearItems
	call SetupBattle_ToggleItemsActivation
	jp .loop
.notSeventhPosition
	dec a
	jr nz, .notEighthPosition
	call SetupBattle_ClearPPs
	call SetupBattle_ToggleInfinitePPs
	jp .loop
.notEighthPosition
	dec a
	jr nz, .notNinthPosition
	call SetupBattle_ClearMoves
	call SetupBattle_ToggleMovesScaling
	jp .loop
.notNinthPosition
	dec a
	jr nz, .notTenthPosition
	call SetupBattle_ClearMusic
	ld hl, wBattleMusic
	jr z, .advanceSelection
.notTenthPosition
	jp .loop					; right button does nothing on Start Battle
.advanceTrainerClassSelection
	ld a, 1						; trainer numbers within trainer classes start at 1
	ld [bc], a					; reset trainer number whenever trainer class is changed
.advanceSelection
	inc [hl]
	jp .loop

.leftPressed					; LEFT
	ld a, [wBattleSetupMenuPos]
	and a
	jr nz, .notFirstPosition_bis
	call SetupBattle_ClearTrainer1Class
	call SetupBattle_ClearTrainer1Name
	ld hl, wPlayerClass
	ld bc, wPlayerNo
	jr .rewindTrainerClassSelection
.notFirstPosition_bis
	dec a
	jr nz, .notSecondPosition_bis
	call SetupBattle_ClearTrainer1Name
	ld hl, wPlayerNo
	jr .rewindSelection
.notSecondPosition_bis
	dec a
	jr nz, .notThirdPosition_bis
	call SetupBattle_ClearTrainer2Class
	call SetupBattle_ClearTrainer2Name
	ld hl, wTrainerClass
	ld bc, wTrainerNo
	jr .rewindTrainerClassSelection
.notThirdPosition_bis
	dec a
	jr nz, .notFourthPosition_bis
	call SetupBattle_ClearTrainer2Name
	ld hl, wTrainerNo
	jr .rewindSelection
.notFourthPosition_bis
	dec a
	jr nz, .notFifthPosition_bis
	call SetupBattle_ClearLevel
	ld hl, wLevelScaling
	jr z, .rewindSelection
.notFifthPosition_bis
	dec a
	jr nz, .notSixthPosition_bis
	call SetupBattle_ClearStats
	call SetupBattle_ToggleCustomDVsAndStatExp
	jp .loop
.notSixthPosition_bis
	dec a
	jr nz, .notSeventhPosition_bis
	call SetupBattle_ClearItems
	call SetupBattle_ToggleItemsActivation
	jp .loop
.notSeventhPosition_bis
	dec a
	jr nz, .notEighthPosition_bis
	call SetupBattle_ClearPPs
	call SetupBattle_ToggleInfinitePPs
	jp .loop
.notEighthPosition_bis
	dec a
	jr nz, .notNinthPosition_bis
	call SetupBattle_ClearMoves
	call SetupBattle_ToggleMovesScaling
	jp .loop
.notNinthPosition_bis
	dec a
	jr nz, .notTenthPosition_bis
	call SetupBattle_ClearMusic
	ld hl, wBattleMusic
	jr z, .rewindSelection
.notTenthPosition_bis
	jp .loop					; left button does nothing on Start Battle
.rewindTrainerClassSelection
	ld a, 1						; trainer numbers within trainer classes start at 1
	ld [bc], a					; reset trainer number whenever trainer class is changed
.rewindSelection
	dec [hl]
	jp .loop

.startBattle
	; display a loading screen while loading trainer parties
	coord hl, 1, 13
	lb bc, 3, 16
	call TextBoxBorder
	coord hl, 5, 14
	ld de, LoadingString
	call PlaceString
	coord hl, 4, 16
	ld de, ProgressBarString
	call PlaceString
	
	callab ReadPlayerTrainer
	ld a, [wPartyCount]
	and a
	jr nz, .Trainer1OK
	ld hl, Error1Text
	jr .error
	
.Trainer1OK
	ld a, [wTrainerClass]
	add OPP_ID_OFFSET
	ld [wEngagedTrainerClass], a
	ld a, [wTrainerNo]
	ld [wEngagedTrainerSet], a
	call GetTrainerInformation
	
	callab ReadEnemyTrainer							; renamed it from ReadTrainer
	ld a, [wEnemyPartyCount]
	and a
	jr nz, .Trainer2OK
	ld hl, Error2Text

.error
	call PrintText
	call SetupBattle_ReturnToSetupMenu
	jp .loop
	
.Trainer2OK
	ld a, BATTLE_TYPE_SIMULATOR
	ld [wBattleType], a
	call StartTrainerBattle
	predef InitOpponent
	; fallthrough

ReturnToRedsRoom:
	call GBPalWhiteOutWithDelay3
	ld hl, wFontLoaded
	ld a, [hl]
	push af
	push hl
	res 0, [hl]
	xor a
	ld [wd72d], a
	dec a
	ld [wDestinationWarpID], a
	call LoadMapData
	callba ClearVariablesOnEnterMap
	pop hl
	pop af
	ld [hl], a
	call GBFadeInFromWhite
	call PlayDefaultMusicFadeOutCurrentAfterBattle
	ld a, [wPartyCount]
	and a
	ret z						; in case there are no pokemon in the party, don't call HealParty (or it would crash)
	predef HealParty
	ret
	
DisplaySetupMenu:
	coord hl, 7, 0
	ld de, SetupString
	call PlaceString
	
	coord hl, 2, 2
	ld de, Trainer1String
	call PlaceString
	coord hl, 1, 3
	ld de, ClassString
	call PlaceString
	coord hl, 1, 4
	ld de, NameString
	call PlaceString
	
	coord hl, 2, 6
	ld de, Trainer2String
	call PlaceString
	coord hl, 1, 7
	ld de, ClassString
	call PlaceString
	coord hl, 1, 8
	ld de, NameString
	call PlaceString
	
	coord hl, 2, 10
	ld de, LevelString
	call PlaceString
	
	coord hl, 2, 11
	ld de, StatsString
	call PlaceString
	
	coord hl, 2, 12
	ld de, ItemsString
	call PlaceString
	
	coord hl, 2, 13
	ld de, PPsString
	call PlaceString
	
	coord hl, 2, 14
	ld de, MovesString
	call PlaceString
	
	coord hl, 2, 15
	ld de, MusicString
	call PlaceString
	
	coord hl, 4, 17
	ld de, StartBattleString
	call PlaceString
	ret

LoadingString:
	db "Loading...@"

ProgressBarString:
	db "▷▷▷▷▷▷▷▷▷▷▷▷@"

SetupString:
	db "SETUP@"

Trainer1String:
	db "TRAINER 1@"

Trainer2String:
	db "TRAINER 2@"
	
ClassString:
	db "CLASS:@"

EmptyClassString:
	db "No trainer data@"

NameString:
	db "ID:@"

LevelString:
	db "LEVEL:@"

DefaultLevelString:
DefaultStatsString:
	db "DEFAULT@"

StatsString:
	db "STATS:@"

CustomString:
	db "CUSTOM@"

ItemsString:
	db "ITEMS:@"
	
ItemsOnString:
	db "ON@"
	
ItemsOffString:
	db "OFF@"

PPsString:
	db " PPs :@"
	
PPsDepleteString:
	db "DEPLETE@"
	
PPsInfiniteString:
	db "INFINITE@"

MovesString:
	db "MOVES:@"
	
MovesScaleString:
	db "SCALE@"
	
MovesKeepString:
	db "KEEP@"
	
MusicString:
	db "MUSIC:@"

MusicNames:
	db "TRAINER@"
	db "GYM LEADER@"
	db "CHAMPION@"
	db "WILD <pkmn>@"
	db "@"				; end marker

StartBattleString:
	db "START BATTLE@"

CustomStatsString:
	db "CUSTOM STATS:@"
	
StatExpString:
	db "STAT EXP:@"

DVsString:
	db "DVs:@"

DVsTiersNames:
	db "ZERO@"
	db "TERRIBLE@"
	db "VERY LOW@"
	db "LOW@"
	db "AVERAGE@"
	db "GOOD@"
	db "VERY GOOD@"
	db "EXCELLENT@"
	db "MAXED@"
	db "@"
	
AIString:
	db "AI:@"

AIRandomString:
	db "RANDOM@"

AINames:
	db "STATUS@"
	db "STAT BOOSTS@"
	db "TYPE MATCHUPS@"
	db "@"

AISwitchString:
	db "SWITCHES@"
	
NoneString:
	db "NONE@"
	
Error1Text:
	text "ERROR: Trainer 1"
	line "is not valid."
	prompt
	done
	
Error2Text:
	text "ERROR: Trainer 2"
	line "is not valid."
	prompt
	done
	
SetupBattle_ToggleCustomDVsAndStatExp:
	ld a, [wUseCustomDVsAndStatExp]
	xor 1
	ld [wUseCustomDVsAndStatExp], a
	ret
	
SetupBattle_ToggleItemsActivation:
	ld a, [wEnableItems]
	xor 1
	ld [wEnableItems], a
	ret

SetupBattle_ToggleInfinitePPs:
	ld a, [wInfinitePPs]
	xor 1
	ld [wInfinitePPs], a
	ret

SetupBattle_ToggleMovesScaling:
	ld a, [wMovesScaling]
	xor 1
	ld [wMovesScaling], a
	ret
	
SetupBattle_PrintLevel:
	coord hl, 8, 10
	ld de, DefaultLevelString
	ld a, [wLevelScaling]
	and a
	jr z, .printDefault
	cp MAX_LEVEL + 1
	jr c, .printLevel
	cp $ff
	jr nz, .overflow
	ld a, MAX_LEVEL
	ld [wLevelScaling], a
	jr .printLevel
.overflow
	xor a
	ld [wLevelScaling], a
	jr .printDefault
.printLevel
	ld de, wLevelScaling
	lb bc, 1, 3
	call PrintNumber
	ret
.printDefault
	call PlaceString
	ret

SetupBattle_PrintStats:
	coord hl, 8, 11
	ld de, DefaultStatsString
	ld a, [wUseCustomDVsAndStatExp]
	and a
	jr z, .print
	ld de, CustomString
.print
	call PlaceString
	ret

SetupBattle_PrintItems:
	coord hl, 8, 12
	ld de, ItemsOffString
	ld a, [wEnableItems]
	and a
	jr z, .print
	ld de, ItemsOnString
.print
	call PlaceString
	ret

SetupBattle_PrintPPs:
	coord hl, 8, 13
	ld de, PPsDepleteString
	ld a, [wInfinitePPs]
	and a
	jr z, .print
	ld de, PPsInfiniteString
.print
	call PlaceString
	ret

SetupBattle_PrintMoves:
	coord hl, 8, 14
	ld de, MovesScaleString
	ld a, [wMovesScaling]
	and a
	jr nz, .print
	ld de, MovesKeepString
.print
	call PlaceString
	ret
	
SetupBattle_PrintMusic:
	ld hl, MusicNames
	ld a, [wBattleMusic]
	cp NUM_TRACKS
	jr c, .noOverflow
	cp $ff
	ld a, 0
	jr nz, .noUnderflow
	ld a, NUM_TRACKS - 1
.noUnderflow
	ld [wBattleMusic], a
.noOverflow
	ld b, a
	ld c, 0
.nextMusic
	ld a, c
	cp b
	jr z, .foundMusic
.skipMusic
	ld a, [hli]
	cp "@"
	jr nz, .skipMusic
	inc c
	jr .nextMusic
.foundMusic
	ld d, h
	ld e, l
	coord hl, 8, 15
	call PlaceString
	ret

SetupBattle_PrintCursor:
	call SetupBattle_EraseCursor
	ld a, [wBattleSetupMenuPos]
	coord hl, 0, 3
	and a
	jr z, .placeCursor
	coord hl, 0, 4
	dec a
	jr z, .placeCursor
	coord hl, 0, 7
	dec a
	jr z, .placeCursor
	coord hl, 0, 8
	dec a
	jr z, .placeCursor
	coord hl, 1, 10
	dec a
	jr z, .placeCursor
	coord hl, 1, 11
	dec a
	jr z, .placeCursor
	coord hl, 1, 12
	dec a
	jr z, .placeCursor
	coord hl, 1, 13
	dec a
	jr z, .placeCursor
	coord hl, 1, 14
	dec a
	jr z, .placeCursor
	coord hl, 1, 15
	dec a
	jr z, .placeCursor
	coord hl, 3, 17
.placeCursor
	ld a, $ed					; right full arrow
	ld [hl], a
	ret
	
SetupBattle_EraseCursor:
	ld a, " "
	coord hl, 0, 3
	ld [hl], a
	coord hl, 0, 4
	ld [hl], a
	coord hl, 0, 7
	ld [hl], a
	coord hl, 0, 8
	ld [hl], a
	coord hl, 1, 10
	ld [hl], a
	coord hl, 1, 11
	ld [hl], a
	coord hl, 1, 12
	ld [hl], a
	coord hl, 1, 13
	ld [hl], a
	coord hl, 1, 14
	ld [hl], a
	coord hl, 1, 15
	ld [hl], a
	coord hl, 3, 17
	ld [hl], a
	ret

SetupBattle_ClearTrainer1Class:
	coord hl, 7, 3
	lb bc, 1, 13
	call ClearScreenArea
	ret
	
SetupBattle_ClearTrainer1Name:
	coord hl, 4, 4
	lb bc, 1, 16
	call ClearScreenArea
	ret
	
SetupBattle_ClearTrainer2Class:
	coord hl, 7, 7
	lb bc, 1, 13
	call ClearScreenArea
	ret
	
SetupBattle_ClearTrainer2Name:
	coord hl, 4, 8
	lb bc, 1, 16
	call ClearScreenArea
	ret

SetupBattle_ClearLevel:
	coord hl, 8, 10
	lb bc, 1, 7
	call ClearScreenArea
	ret

SetupBattle_ClearStats:
	coord hl, 8, 11
	lb bc, 1, 7
	call ClearScreenArea
	ret

SetupBattle_ClearItems:
	coord hl, 8, 12
	lb bc, 1, 3
	call ClearScreenArea
	ret

SetupBattle_ClearPPs:
	coord hl, 8, 13
	lb bc, 1, 8
	call ClearScreenArea
	ret

SetupBattle_ClearMoves:
	coord hl, 8, 14
	lb bc, 1, 5
	call ClearScreenArea
	ret
	
SetupBattle_ClearMusic:
	coord hl, 8, 15
	lb bc, 1, 10
	call ClearScreenArea
	ret

SetupBattle_DisplayTeam1:
	callab SetupBattle_PrintPlayerClass			; this is just to populate wTrainerClassTemp with the right trainer class
	callab SetupBattle_PrintPlayerName			; this is just to populate wTrainerNameTemp with the right trainer name
	call SetupBattle_Submenu_CommonInit
	call SetupBattle_DisplayTeam_CommonInit
	coord hl, 2, 2
	ld de, wPlayerNo
	lb bc, 1, 3
	call PrintNumber
	callab LoadTeamData_1
	call SetupBattle_DisplayTeam_CommonLoop
	jp SetupBattle_ReturnToSetupMenu
	
SetupBattle_DisplayTeam2:
	callab SetupBattle_PrintTrainerClass		; this is just to populate wTrainerClassTemp with the right trainer class
	callab SetupBattle_PrintTrainerName			; this is just to populate wTrainerNameTemp with the right trainer name
	call SetupBattle_Submenu_CommonInit
	call SetupBattle_DisplayTeam_CommonInit
	coord hl, 2, 2
	ld de, wTrainerNo
	lb bc, 1, 3
	call PrintNumber
	callab LoadTeamData_2
	call SetupBattle_DisplayTeam_CommonLoop
	jp SetupBattle_ReturnToSetupMenu

SetupBattle_DisplayEmptyTrainerClass:
	coord hl, 2, 7
	ld de, EmptyClassString
	call PlaceString
	call SetupBattle_WaitForKeyPress
	jp SetupBattle_ReturnToSetupMenu
	
SetupBattle_Submenu_CommonInit:
	call ClearScreen
	coord hl, 0, 0
	ld b, 16
	ld c, 18
	jp TextBoxBorder
	
SetupBattle_DisplayTeam_CommonInit:
	coord hl, 1, 1
	ld de, ClassString
	call PlaceString
	ld de, wTrainerClassTemp
	coord hl, 7, 1
	call PlaceString
	ld de, wTrainerNameTemp
	coord hl, 6, 2
	call PlaceString
	coord hl, 5, 2
	ld [hl], "-"
	ld de, PokemonString
	coord hl, 2, 4
	call PlaceString
	ld de, LevelString
	coord hl, 13, 4
	call PlaceString
	ld de, SeparatorString
	coord hl, 2, 5
	jp PlaceString
	
SetupBattle_DisplayTeam_CommonLoop:
	ld de, wTeamDataTemp
	ld a, [de]
	and a
	jr z, SetupBattle_DisplayEmptyTrainerClass		; if first byte of wTeamDataTemp is zero, it means it's an empty trainer class
	ld b, PARTY_LENGTH
	coord hl, 2, 6
.loop
	ld a, [de]
	inc de
	and a
	jr z, .nextMon		; skip empty slots
	push hl
	push de
	push bc
	push hl
	ld [wd11e], a
	call GetMonName
	ld de, wcd6d
	pop hl
	push hl
	call PlaceString
	pop hl
	pop bc
	pop de
	ld a, [de]
	push bc
	push de
	ld bc, NAME_LENGTH + 1
	add hl, bc
	lb bc, 1, 3
	call PrintNumber
	pop de
	pop bc
	pop hl
.nextMon
	inc de
	push bc
	ld bc, SCREEN_WIDTH * 2
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	; fallthrough

SetupBattle_WaitForKeyPress:
	call JoypadLowSensitivity
	ld a, [hJoy5]
	and (1 << BIT_B_BUTTON) | (1 << BIT_A_BUTTON)
	jr nz, .AorBPressed
	jr SetupBattle_WaitForKeyPress
.AorBPressed
	ret
	
SetupBattle_DisplayClass1:
	callab SetupBattle_PrintPlayerClass			; this is just to populate wTrainerClassTemp with the right trainer class
	call SetupBattle_Submenu_CommonInit
	ld a, [wPlayerClass]
	ld [wcf91], a
	jr SetupBattle_DisplayClass_Common

SetupBattle_DisplayClass2:
	callab SetupBattle_PrintTrainerClass		; this is just to populate wTrainerClassTemp with the right trainer class
	call SetupBattle_Submenu_CommonInit
	ld a, [wTrainerClass]
	ld [wcf91], a
	; fallthrough
	
SetupBattle_DisplayClass_Common:
	coord hl, 1, 1
	ld de, ClassString
	call PlaceString
	ld de, wTrainerClassTemp
	coord hl, 7, 1
	call PlaceString
	
	ld de, CustomStatsString
	coord hl, 1, 3
	call PlaceString
	
	ld de, StatExpString
	coord hl, 2, 4
	call PlaceString
	ld a, [wcf91]
	ld d, a
	callab GetTrainerClassStatExp		; gets class Stat Exp in de
	ld hl, SetupBattle_ClassStatExp
.statExpLoop
	ld a, [hli]
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	cp d
	jr nz, .statExpLoop
	ld a, c
	cp e
	jr nz, .statExpLoop
	coord hl, 12, 4
	ld a, "+"
	ld [hli], a
	ld a, b
	ld de, wcd6d
	ld [de], a
	cp 10
	jr nc, .notSingleDigit
	dec hl
.notSingleDigit
	lb bc, 1, 2
	call PrintNumber
	
	ld de, DVsString
	coord hl, 2, 5
	call PlaceString
	ld a, [wcf91]
	ld d, a
	callab GetTrainerClassDVs			; gets class DVs in de
	ld hl, SetupBattle_ClassDVs
	ld b, $ff
.DVsLoop								; compare class DVs to the list of possible DVs
	ld a, [hli]
	ld c, [hl]
	inc hl
	inc b								; class DVs index is stored in b
	cp d
	jr nz, .DVsLoop
	ld a, c
	cp e
	jr nz, .DVsLoop
	ld hl, DVsTiersNames
	ld a, b
	and a
	jr z, .foundDVs
.skipName
	ld a, [hli]
	cp "@"
	jr nz, .skipName
	dec b
	jr nz, .skipName
.foundDVs
	ld d, h
	ld e, l
	coord hl, 7, 5
	call PlaceString

	ld de, AIString
	coord hl, 1, 7
	call PlaceString
	coord hl, 2, 8
	push hl
	ld a, [wcf91]
	ld d, a
	callab GetTrainerClassAI
	pop hl
	ld de, wcd6d
	ld a, [de]
	inc de
	push de
	push hl
	and a
	jr nz, .loop
	ld de, AIRandomString
	pop hl
	call PlaceString
	jr .classAIDone
.loop
	ld hl, AINames
.seekAIName
	dec a
	jr z, .gotAIName
	push af
.skipAIName
	ld a, [hli]
	cp "@"
	jr nz, .skipAIName
	pop af
	jr .seekAIName
.gotAIName
	ld d, h					; put the string address in de for PlaceString
	ld e, l
	pop hl					; restore hl to the coorindates for the string (matches the push bc further down)
	call PlaceString
	ld b, h					; put coordinates in bc for later (PlaceString clobbers bc but preserves hl)
	ld c, l
	pop de					; restore de to wcd6d + loop iteration
	ld a, [de]				; read next AI value
	inc de					; move de to the next value
	push de					; save current AI value address in the stack
	ld hl, SCREEN_WIDTH		; here bc already contains the coordinates, so put the screen width in hl instead
	add hl, bc				; makes hl point to the coordinates for the next AI name
	ld b, h					; put the coordinates in bc
	ld c, l
	push bc					; save the coordinates in the stack for next loop iteration
	and a
	jr nz, .loop
	pop hl
	
.classAIDone
	pop de					; this is just to drain the stack
	ld a, [wcf91]
	push hl
	ld hl, SetupBattle_SwitchingClasses
	ld de, 1
	call IsInArray
	pop hl
	jr nc, .checkItems
	ld de, AISwitchString
	call PlaceString
.checkItems
	
	ld de, ItemsString
	coord hl, 1, 13
	call PlaceString
	
	ld a, [wcf91]
	ld hl, SetupBattle_ClassItems
	dec a								; trainer classes start at 1
	add a
	ld c, a
	ld b, 0
	add hl, bc							; make hl point to the item data for this trainer class
	ld a, [hli]
	and a
	jr nz, .usesItems
	ld de, NoneString
	coord hl, 2, 14
	call PlaceString
	jr .itemsDone
.usesItems
	ld [wd11e], a						; store item id in wd11e for GetItemName
	ld a, [hl]
	ld [wItemQuantity], a
	call GetItemName
	coord hl, 2, 14
	call PlaceString
	ld bc, ITEM_NAME_LENGTH
	add hl, bc
	ld a, " "
	ld [hli], a
	ld a, "×"
	ld [hli], a
	ld a, [wItemQuantity]
	add "0"
	ld [hli], a
.itemsDone
	
	call SetupBattle_WaitForKeyPress
	jp SetupBattle_ReturnToSetupMenu

SetupBattle_ClassStatExp:
	dwb STATEXP_ZERO, 0
	dwb STATEXP_ONE, 1
	dwb STATEXP_TWO, 2
	dwb STATEXP_THREE, 3
	dwb STATEXP_FOUR, 4
	dwb STATEXP_FIVE, 5
	dwb STATEXP_SIX, 6
	dwb STATEXP_SEVEN, 7
	dwb STATEXP_EIGHT, 8
	dwb STATEXP_NINE, 9
	dwb STATEXP_TEN, 10
	dwb STATEXP_TWELVE, 12
	dwb STATEXP_FIFTEEN, 15
	dwb STATEXP_TWENTY, 20
	dwb STATEXP_TWENTY_FIVE, 25
	dwb STATEXP_THIRTY, 30
	dwb STATEXP_THIRTY_FIVE, 35
	dwb STATEXP_FORTY, 40
	dwb STATEXP_FORTY_FIVE, 45
	dwb STATEXP_FIFTY, 50
	dwb STATEXP_FIFTY_FIVE, 55
	dwb STATEXP_SIXTY, 60
	dwb STATEXP_MAX, 64

SetupBattle_ClassDVs:
	dw DVS_MIN
	dw DVS_TERRIBLE
	dw DVS_VERY_LOW
	dw DVS_LOW
	dw DVS_AVERAGE
	dw DVS_GOOD
	dw DVS_VERY_GOOD
	dw DVS_EXCELLENT
	dw DVS_MAX

SetupBattle_ClassItems:
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db X_ATTACK, 2
	db 0, 0
	db 0, 0
	db 0, 0
	db 0, 0
	db GUARD_SPEC, 1
	db 0, 0
	db X_ATTACK, 2
	db HYPER_POTION, 1
	db X_DEFEND, 2
	db FULL_HEAL, 5
	db X_DEFEND, 1
	db X_SPEED, 1
	db SUPER_POTION, 1
	db X_ATTACK, 2
	db SUPER_POTION, 2
	db HYPER_POTION, 1
	db 0, 0
	db POTION, 1
	db FULL_RESTORE, 1
	db SUPER_POTION, 2
	db 0, 0
	db SUPER_POTION, 2
	db HYPER_POTION, 1

SetupBattle_SwitchingClasses:
	db JUGGLER_X
	db JUGGLER
	db COOLTRAINER_F
	db AGATHA
	db $FF
	
SetupBattle_ReturnToSetupMenu:
	call ClearScreen
	call DisplaySetupMenu
	ret

PokemonString:
	db "#MON@"
	
SeparatorString:
	db "----------------@"