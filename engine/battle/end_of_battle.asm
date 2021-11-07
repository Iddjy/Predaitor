EndOfBattle:
	; IDDJY : removed the check to see if it's a link battle, so that we get the end of link battle screen for all battles
	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1Status
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld a, [wEnemyMonStatus]
	ld [hl], a
	call ClearScreen
	ld b, SET_PAL_GENERIC						; IDDJY
	call RunPaletteCommand						; IDDJY
	xor a										; IDDJY
	ld [hStartTileID], a						; IDDJY
	coord hl, 0, 0								; IDDJY
	predef CopyUncompressedPicToTilemap			; IDDJY
	ld a, $31									; IDDJY
	ld [hStartTileID], a						; IDDJY
	coord hl, 0, 10								; IDDJY
	predef CopyUncompressedPicToTilemap			; IDDJY
	callab DisplayLinkBattleVersusTextBox
	ld c, 100									; IDDJY moved this from DisplayLinkBattleVersusTextBox, decreased from 150
	call DelayFrames							; IDDJY moved this from DisplayLinkBattleVersusTextBox
	ld b, 3										; IDDJY number of times the winner text blinks
	ld a, [wBattleResult]
	cp $1
	ld de, WinnerText							; IDDJY replaced with generic text
	coord hl, 8, 14								; IDDJY coordinates when the player wins (right of the player's pic)
	jr c, .placeWinnerOrDrawString
	coord hl, 8, 2								; IDDJY coordinates when the enemy wins (right of the enemy's pic)
	jr z, .placeWinnerOrDrawString
	ld de, DrawText
	coord hl, 8, 8								; IDDJY coordinates for a draw (over the VS string)
.placeWinnerOrDrawString
	push de
	push bc
	call PlaceString
	pop bc
	pop de
	ld c, 50
	call DelayFrames
	dec b
	jr z, .evolution					; when the counter reaches zero, stop blinking and continue the routine
	push de
	ld de, BlankText
	push bc
	call PlaceString					; otherwise blink out the text and loop again
	pop bc
	ld c, 50
	call DelayFrames
	pop de
	jr .placeWinnerOrDrawString
.notLinkBattle
	ld a, [wBattleResult]
	and a
	jr nz, .resetVariables
	ld hl, wTotalPayDayMoney
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	jr z, .evolution ; if pay day money is 0, jump
	ld de, wPlayerMoney + 2
	ld c, $3
	predef AddBCDPredef
	ld hl, PickUpPayDayMoneyText
	call PrintText
.evolution
	call JoypadLowSensitivity	; IDDJY
	ld a, [hJoy5]				; IDDJY
	and A_BUTTON | B_BUTTON		; IDDJY check if A or B was pressed
	jr z, .evolution			; IDDJY stay on the end battle screen as long as neither the A or B buttons are pressed
	xor a
	ld [wForceEvolution], a
	predef EvolutionAfterBattle
.resetVariables
	xor a
	ld [wLowHealthAlarm], a ;disable low health alarm
	ld [wChannelSoundIDs + Ch4], a
	ld [wIsInBattle], a
	ld [wBattleType], a
	ld [wMoveMissed], a
	ld [wCurOpponent], a
	ld [wForcePlayerToChooseMon], a
	ld [wNumRunAttempts], a
	ld [wEscapedFromBattle], a
	ld hl, wPartyAndBillsPCSavedMenuItem
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wListScrollOffset], a
	ld hl, wPlayerStatsToDouble
	ld b, $18
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ld hl, wd72c
	set 0, [hl]
	call WaitForSoundToFinish
	call GBPalWhiteOut
	ld a, $ff
	ld [wDestinationWarpID], a
	ret

YouWinText:
	db "^ WINNER ^@"		; IDDJY replaced YOU WIN text

YouLoseText:
	db "▼ WINNER ▼@"		; IDDJY replaced YOU LOSE text

DrawText:
	db "   DRAW@"			; IDDJY added one space at the start to keep the text centered

WinnerText:
	db "! WINNER !@"		; IDDJY added a single text for both cases, to be displayed in front of the winner's pic

BlankText:
	db "          @"		; IDDJY this is to make the winner text blink
	
PickUpPayDayMoneyText:
	TX_FAR _PickUpPayDayMoneyText
	db "@"
