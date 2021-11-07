ReadEnemyTrainer:
; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz
	ld a, 1
	ld [H_WHOSETURN], a
	callab LoadIndividualTrainerName
	ld hl, wEnemyPartyCount			; set [wEnemyPartyCount] to 0, [wEnemyPartyCount+1] to FF
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	call SeekToTrainerData_2
	xor a
	cp [hl]									; check if first pokemon species is null
	ret z									; if it is, it means this is an empty trainer class, so exit
	ld b, PARTY_LENGTH						; pokemon slot counter
	ld de, wEnemyMon1Moves					; RAM address of the 1st move of the 1st pokémon in the enemy's team
.loopPokemon
	ld a, [hli]									; read the species ID of the current slot
	and a										; $00 means empty slot
	jr nz, .addPokemon							; if species ID is not null, add the pokémon to the party
	push de										; else skip to the next pokémon entry
	ld de, TrainerDataMon1End - TrainerData - 1	; size of a pokemon entry minus 1 because we incremented hl once already
	add hl, de									; advance hl by enough bytes in order to get to the next pokémon entry
	pop de
	jp .nextPokemonEntry
.addPokemon
	ld [wcf91], a					; store the species ID in wcf91 for AddPartyMon
	ld a, [wMovesScaling]
	and a
	jr z, .notScaled				; if we want to keep original moves, don't apply scaled level now
	ld a, [wLevelScaling]
	and a
	jr z, .notScaled				; if scaled level is zero, don't scale, use party data
	cp MAX_LEVEL + 1
	jr c, .copyLevel				; if scaled level is <=  MAX_LEVEL, use it instead of party data
.notScaled
	ld a, [hl]						; read the level of the current pokémon from party data
.copyLevel
	inc hl
	ld [wCurEnemyLVL], a			; store it in wCurEnemyLVL for AddPartyMon
	ld a, 1
	ld [wMonDataLocation], a		; input to tell AddPartyMon that we're filling up the enemy party
	call AddPartyMon
	ld c, NUM_MOVES					; move slot counter
.loopMoves
	ld a, [hli]						; read the current move ID of the current pokémon
	cp $ff							; if move ID is $ff, leave this slot unchanged from default moveset
	jr z, .nextMoveEntry			; skip to the next move
	ld [de], a						; else write the move ID in the corresponding RAM location
	call updateEnemyMovePP			; updates the move's PP according to the new move's data
.nextMoveEntry
	inc de							; increment RAM address to point to the next move slot
	dec c							; decrease slot counter
	jr nz, .loopMoves				; if there are still move slots to fill, loop back to .loopMoves
	push hl
	ld h, d
	ld l, e
	ld de, wEnemyMon1HPExp - (wEnemyMon1Moves + NUM_MOVES)	; this makes de point to Stat Exp
	add hl, de
	ld d, h
	ld e, l
	ld a, [wTrainerClass]
	ld hl, TrainerClassTiers
	push bc
	ld bc, TrainerClassTiersEnd - TrainerClassTiers
.seekTrainerClassTier
	dec a
	and a
	jr z, .TrainerClassTierReached
	add hl, bc
	jr .seekTrainerClassTier
.TrainerClassTierReached
	pop bc
	ld c, NUM_STATS
.loopEVs
	ld a, [hli]					; load the trainer class EV tier high byte and make hl point to the low byte
	ld [de], a					; copy the Stat Exp high byte for current stat
	inc de
	ld a, [hld]					; load the trainer class EV tier low byte and make hl go back to the high byte
	ld [de], a					; copy the Stat Exp low byte for current stat
	inc de
	dec c						; decrease counter
	jr nz, .loopEVs
	inc hl
	inc hl						; make hl move on to the DVs
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld a, [hli]					; load the trainer class DVs first byte and make hl point to the second byte
	jr nz, .firstDV
	ld a, $98					; when wUseCustomDVsAndStatExp is zero, replace custom DV with standard AI DV
.firstDV
	ld [de], a					; copy the first DV byte
	inc de
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld a, [hl]					; load the trainer class DVs second byte and make hl point to the trainer class EV tier high byte
	jr nz, .secondDV
	ld a, $88					; when wUseCustomDVsAndStatExp is zero, replace custom DV with standard AI DV
.secondDV
	ld [de], a					; copy the second DV byte
	ld a, NUM_MOVES
.skipPPsLoop
	inc de
	dec a
	jr nz, .skipPPsLoop
	inc de						; make de point to level
	ld a, [wLevelScaling]
	and a
	jr z, .notScaled2			; if scaled level is zero, don't scale
	cp MAX_LEVEL + 1
	jr nc, .notScaled2			; if scaled level is > MAX_LEVEL, ignore it
	ld [wCurEnemyLVL], a		; for updateEnemyStats later
	ld [de], a					; update level
	push de
	ld h, d
	ld l, e
	ld de, wEnemyMon1BoxLevel - (wEnemyMon1Level)	; this makes de point to wEnemyMon1BoxLevel
	add hl, de
	ld d, h
	ld e, l
	ld [de], a					; update Box level
	pop de
.notScaled2
	call updateEnemyStats
	ld h, d
	ld l, e
	ld de, wEnemyMon2Moves - (wEnemyMon1Level)	; this makes de go from the level of mon n to the moves of mon n+1
	add hl, de
	ld d, h
	ld e, l
	pop hl
.nextPokemonEntry
	call AdvanceProgressBar			; fill up one more arrow in the progress bar
	dec b							; one pokémon slot down
	jp nz, .loopPokemon				; while b>0, there are slots remaining, so loop back
; this part computes the money gain for the trainer
	xor a			 				; clear wAmountMoneyWon through wAmountMoneyWon + 2 to initialize money gain to zero
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]			; money gain is proportional to the level of the last pokémon on the trainer's team
	ld b, a
.lastLoop
	ld hl, wTrainerBaseMoney + 1	; base money gain for this trainer class
	ld c, 2
	push bc
	predef AddBCDPredef				; this function does BCD sum (over c bytes) of hl and de and stores the result in de
	pop bc
	inc de
	inc de
	dec b
	jr nz, .lastLoop
	ret

; IDDJY: this is called for each mon inside the loop
; IDDJY: input: b = number of pokemon slots remaining in the party
updateEnemyStats:
	push hl
	push bc
	push de
	ld a, PARTY_LENGTH
	sub b							; makes a equal to the index of the current mon in the party
	push af
	ld bc, wEnemyMon2 - wEnemyMon1
	ld hl, wEnemyMon1Stats
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMon1HPExp
	pop af
	call AddNTimes
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld b, 1
	jr nz, .calcStats
	ld b, 0
.calcStats
	push hl
	push de
	call CalcStats
	pop de
	pop hl
	ld bc, wEnemyMon1HP - wEnemyMon1HPExp
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	pop de
	pop bc
	pop hl
	ret

; IDDJY: a already contains the move ID when this function is called
updateEnemyMovePP:
	push hl
	and a						; test the move ID
	jr nz, .notEmptySlot		; if move ID is $00, it means it's an empty slot, set PP to zero
	ld [wcd6d], a
	jr .setPP
.notEmptySlot
	push de
	push bc
	ld hl, Moves + MOVEDATA_PP	; position of the first move's PP in the move table in bank E
	ld bc, MoveEnd - Moves		; size of the move structure
	dec a						; decrement a by one because move IDs start at 1
	call AddNTimes				; makes hl point to the ath move's PP in the move table
	ld de, wcd6d				; destination	
	ld bc, 1					; number of bytes to copy
	ld a, BANK(Moves)			; $e
	call FarCopyData			; copies the move's PP from the move table into $cd6d
	pop bc
	pop de
	; at this point, the move's PP is stored in wcd6d
	; and de points to the move ID in the in-battle data for the trainer
.setPP
	push de
	ld h, d
	ld l, e
	ld de, wEnemyMon1PP - wEnemyMon1Moves
	add hl, de				; this makes de go from the move ID to the move's PP in in-battle data
	ld d, h
	ld e, l
	ld a, [wcd6d]
	ld [de], a				; store the PP value in the corresponding RAM location
	pop de
	pop hl
	ret

; IDDJY version for the player's party
ReadPlayerTrainer:
; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz
	xor a
	ld [H_WHOSETURN], a
	callab LoadIndividualTrainerName
	ld hl, wPartyCount			; set [wPartyCount] to 0, [wPartyCount+1] to FF
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	call SeekToTrainerData_1
	xor a
	cp [hl]									; check if first pokemon species is null
	ret z									; if it is, it means this is an empty trainer class, so exit
	ld b, PARTY_LENGTH						; pokemon slot counter
	ld de, wPartyMon1Moves					; RAM address of the 1st move of the 1st pokémon in the player's team
.loopPokemon
	ld a, [hli]									; read the species ID of the current slot
	and a										; $00 means empty slot
	jr nz, .addPokemon							; if species ID is not null, add the pokémon to the party
	push de										; else skip to the next pokémon entry
	ld de, TrainerDataMon1End - TrainerData - 1	; size of a pokemon entry minus 1 because we incremented hl once already
	add hl, de									; advance hl by enough bytes in order to get to the next pokémon entry
	pop de
	jp .nextPokemonEntry
.addPokemon
	ld [wcf91], a					; store the species ID in wcf91 for AddPartyMon
	ld a, [wMovesScaling]
	and a
	jr z, .notScaled				; if we want to keep original moves, don't apply scaled level now
	ld a, [wLevelScaling]
	and a
	jr z, .notScaled				; if scaled level is zero, don't scale, use party data
	cp MAX_LEVEL + 1
	jr c, .copyLevel				; if scaled level is <=  MAX_LEVEL, use it instead of party data
.notScaled
	ld a, [hl]						; read the level of the current pokémon from party data
.copyLevel
	inc hl
	ld [wCurEnemyLVL], a			; store it in wCurEnemyLVL for AddPartyMon
	ld a, $10						; needs to have 0 in lower nybble to fill player's party, but whole value must be >0 to avoid renaming dialog
	ld [wMonDataLocation], a		; input to tell AddPartyMon that we're filling up the player's party
	call AddPartyMon
	ld c, NUM_MOVES					; move slot counter
.loopMoves
	ld a, [hli]						; read the current move ID of the current pokémon
	cp $ff							; if move ID is $ff, leave this slot unchanged from default moveset
	jr z, .nextMoveEntry			; skip to the next move
	ld [de], a						; else write the move ID in the corresponding RAM location
	call updatePlayerMovePP			; updates the move's PP according to the new move's data
.nextMoveEntry
	inc de							; increment RAM address to point to the next move slot
	dec c							; decrease slot counter
	jr nz, .loopMoves				; if there are still move slots to fill, loop back to .loopMoves
	push hl
	ld h, d
	ld l, e
	ld de, wPartyMon1HPExp - (wPartyMon1Moves + NUM_MOVES)	; this makes de point to Stat Exp
	add hl, de
	ld d, h
	ld e, l
	ld a, [wPlayerClass]
	ld hl, TrainerClassTiers
	push bc
	ld bc, TrainerClassTiersEnd - TrainerClassTiers
.seekTrainerClassTier
	dec a
	and a
	jr z, .TrainerClassTierReached
	add hl, bc
	jr .seekTrainerClassTier
.TrainerClassTierReached
	pop bc
	ld c, NUM_STATS
.loopEVs
	ld a, [hli]					; load the trainer class EV tier high byte and make hl point to the low byte
	ld [de], a					; copy the Stat Exp high byte for current stat
	inc de
	ld a, [hld]					; load the trainer class EV tier low byte and make hl go back to the high byte
	ld [de], a					; copy the Stat Exp low byte for current stat
	inc de
	dec c						; decrease counter
	jr nz, .loopEVs
	inc hl
	inc hl						; make hl move on to the DVs
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld a, [hli]					; load the trainer class DVs first byte and make hl point to the second byte
	jr nz, .firstDV
	ld a, $98					; when wUseCustomDVsAndStatExp is zero, replace custom DV with standard AI DV
.firstDV
	ld [de], a					; copy the first DV byte
	inc de
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld a, [hl]					; load the trainer class DVs second byte and make hl point to the trainer class EV tier high byte
	jr nz, .secondDV
	ld a, $88					; when wUseCustomDVsAndStatExp is zero, replace custom DV with standard AI DV
.secondDV
	ld [de], a					; copy the second DV byte
	ld a, NUM_MOVES
.skipPPsLoop
	inc de
	dec a
	jr nz, .skipPPsLoop
	inc de						; make de point to level
	ld a, [wLevelScaling]
	and a
	jr z, .notScaled2			; if scaled level is zero, don't scale
	cp MAX_LEVEL + 1
	jr nc, .notScaled2			; if scaled level is > MAX_LEVEL, ignore it
	ld [wCurEnemyLVL], a		; for updateEnemyStats later
	ld [de], a					; update level
	push de
	ld h, d
	ld l, e
	ld de, wPartyMon1BoxLevel - (wPartyMon1Level)	; this makes de point to wPartyMon1BoxLevel
	add hl, de
	ld d, h
	ld e, l
	ld [de], a					; update Box level
	pop de
.notScaled2
	call updatePlayerStats
	ld h, d
	ld l, e
	ld de, wPartyMon2Moves - (wPartyMon1Level)	; this makes de go from the level of mon n to the moves of mon n+1
	add hl, de
	ld d, h
	ld e, l
	pop hl
.nextPokemonEntry
	call AdvanceProgressBar			; fill up one more arrow in the progress bar
	dec b							; one pokémon slot down
	jp nz, .loopPokemon				; while b>0, there are slots remaining, so loop back
; this part computes the money gain for the trainer
	xor a			 				; clear wAmountMoneyWon through wAmountMoneyWon + 2 to initialize money gain to zero
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]			; money gain is proportional to the level of the last pokémon on the trainer's team
	ld b, a
.lastLoop
	ld hl, wTrainerBaseMoney + 1	; base money gain for this trainer class
	ld c, 2
	push bc
	predef AddBCDPredef				; this function does BCD sum (over c bytes) of hl and de and stores the result in de
	pop bc
	inc de
	inc de
	dec b
	jr nz, .lastLoop
	ret

; IDDJY: this is called for each mon inside the loop
; IDDJY: input: b = number of pokemon slots remaining in the party
updatePlayerStats:
	push hl
	push bc
	push de
	ld a, PARTY_LENGTH
	sub b							; makes a equal to the index of the current mon in the party
	push af
	ld bc, wPartyMon2 - wPartyMon1
	ld hl, wPartyMon1Stats
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wPartyMon1HPExp
	pop af
	call AddNTimes
	ld a, [wUseCustomDVsAndStatExp]
	and a
	ld b, 1
	jr nz, .calcStats
	ld b, 0
.calcStats
	push hl
	push de
	call CalcStats
	pop de
	pop hl
	ld bc, wPartyMon1HP - wPartyMon1HPExp
	add hl, bc
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hl], a
	pop de
	pop bc
	pop hl
	ret

; IDDJY: a already contains the move ID when this function is called
updatePlayerMovePP:
	push hl
	and a						; test the move ID
	jr nz, .notEmptySlot		; if move ID is $00, it means it's an empty slot, set PP to zero
	ld [wcd6d], a
	jr .setPP
.notEmptySlot
	push de
	push bc
	ld hl, Moves + MOVEDATA_PP	; position of the first move's PP in the move table in bank E
	ld bc, MoveEnd - Moves		; size of the move structure
	dec a						; decrement a by one because move IDs start at 1
	call AddNTimes				; makes hl point to the ath move's PP in the move table
	ld de, wcd6d				; destination	
	ld bc, 1					; number of bytes to copy
	ld a, BANK(Moves)			; $e
	call FarCopyData			; copies the move's PP from the move table into $cd6d
	pop bc
	pop de
	; at this point, the move's PP is stored in wcd6d
	; and de points to the move ID in the in-battle data for the trainer
.setPP
	push de
	ld h, d
	ld l, e
	ld de, wPartyMon1PP - wPartyMon1Moves
	add hl, de				; this makes de go from the move ID to the move's PP in in-battle data
	ld d, h
	ld e, l
	ld a, [wcd6d]
	ld [de], a				; store the PP value in the corresponding RAM location
	pop de
	pop hl
	ret

; IDDJY
AdvanceProgressBar:
	push hl
	push bc
	push de
	coord hl, 4, 16
	ld a, [H_WHOSETURN]
	and a
	jr z, .next
	coord hl, 10, 16
.next
	ld a, PARTY_LENGTH
	sub b
	ld c, a
	ld b, 0
	add hl, bc
	ld de, ProgressBarChar
	call PlaceString
	pop de
	pop bc
	pop hl
	ret

; IDDJY
ProgressBarChar:
	db "▶@"

; IDDJY makes hl point to the trainer data according to the player class and player n°
SeekToTrainerData_1:
	ld a, [wPlayerClass]
	dec a
	add a
	ld hl, TrainerDataPointers		; pointer table for trainer classes
	ld c, a
	ld b, 0
	add hl, bc						; hl contains the address of the pointer to the trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a							; hl now points to the first trainer of the trainer class
	ld a, [wPlayerNo]				; which instance of the trainer class are we fighting
	ld b, a
										; At this point b contains the trainer number,
										; and hl points to the trainer class.
										; Our next task is to iterate through the trainers,
										; decrementing b each time, until we get to the right one.
	ld de, TrainerDataEnd - TrainerData	; size of the trainer data structure
.seekTrainer
	dec b
	ret z							; when b hits zero, it means we are pointing at the right trainer
	add hl, de
	jr .seekTrainer

; IDDJY makes hl point to the trainer data according to the trainer class and trainer n°
SeekToTrainerData_2:
	ld a, [wTrainerClass]
	dec a
	add a
	ld hl, TrainerDataPointers		; pointer table for trainer classes
	ld c, a
	ld b, 0
	add hl, bc						; hl contains the address of the pointer to the trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a							; hl now points to the first trainer of the trainer class
	ld a, [wTrainerNo]				; which instance of the trainer class are we fighting
	ld b, a
										; At this point b contains the trainer number,
										; and hl points to the trainer class.
										; Our next task is to iterate through the trainers,
										; decrementing b each time, until we get to the right one.
	ld de, TrainerDataEnd - TrainerData	; size of the trainer data structure
.seekTrainer
	dec b
	ret z							; when b hits zero, it means we are pointing at the right trainer
	add hl, de
	jr .seekTrainer

LoadTeamData_1:
	call SeekToTrainerData_1
	jr LoadTeamData_2.common
LoadTeamData_2:
	call SeekToTrainerData_2
.common
	ld de, wTeamDataTemp
	ld b, PARTY_LENGTH
	ld a, [hl]
	and a
	jr nz, .loop	; check if there is actually trainer data for this class
	ld [de], a		; if first pokemon species is null, it means this trainer class is empty
	ret				; so just copy the zero into the first byte of wTeamDataTemp and exit
.loop
	ld a, [hli]
	ld [de], a		; copy pokemon species
	inc de
	ld a, [hli]
	ld [de], a		; copy pokemon level
	inc de
	inc hl			; skip moves
	inc hl
	inc hl
	inc hl
	dec b
	ret z
	jr .loop

; IDDJY takes trainer class index in a, and makes hl point to trainer class tier
SeekToTrainerClassTier:
	ld hl, TrainerClassTiers
	ld bc, TrainerClassTiersEnd - TrainerClassTiers
.seekTrainerClassTier
	dec a
	and a
	ret z
	add hl, bc
	jr .seekTrainerClassTier

; IDDJY takes trainer class index as input in d
; IDDJY returns stat exp constant in de
GetTrainerClassStatExp:
	ld a, d
	call SeekToTrainerClassTier
	ld a, [hli]
	ld e, [hl]
	ld d, a
	ret

; IDDJY takes trainer class index as input in d
; IDDJY returns DVs constant in de
GetTrainerClassDVs:
	ld a, d
	call SeekToTrainerClassTier
	inc hl
	inc hl
	ld a, [hli]
	ld e, [hl]
	ld d, a
	ret

INCLUDE "data/trainer_classes_tiers.asm"
