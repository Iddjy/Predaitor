; display "[player] VS [enemy]" text box with pokeballs representing their parties next to the names
DisplayLinkBattleVersusTextBox:
	call LoadTextBoxTilePatterns
	coord hl, 8, 5							; IDDJY moved the text to the right
	ld de, wTrainerName						; IDDJY swapped with wPlayerName
	call PlaceString
	coord hl, 8, 10							; IDDJY moved the text to the right
	ld de, wPlayerName						; IDDJY swapped with wTrainerName
	call PlaceString
; place bold "VS" tiles between the names
	coord hl, 12, 8							; IDDJY moved the text to the right
	ld a, $6b								; IDDJY increased by 2 to take into account the new tileset
	ld [hli], a
	ld [hl], $6c							; IDDJY increased by 2 to take into account the new tileset
	xor a
	ld [wUpdateSpritesEnabled], a
	callab SetupPlayerAndEnemyPokeballs
	ret
