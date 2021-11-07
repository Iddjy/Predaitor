; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIPlayerTrainerChooseMoves:
	xor a					; IDDJY set the turn to the player's for AI move selection
	ld [H_WHOSETURN], a		; IDDJY
	ld a, $a
	ld hl, wBuffer ; init temporary move selection array. Only the moves with the lowest numbers are chosen in the end
	ld [hli], a   ; move 1
	ld [hli], a   ; move 2
	ld [hli], a   ; move 3
	ld [hl], a    ; move 4
	ld a, [wPlayerDisabledMove] ; forbid disabled move (if any)
	swap a
	and $f
	jr z, .noMoveDisabled
	ld hl, wBuffer
	dec a
	ld c, a
	ld b, $0
	add hl, bc    ; advance pointer to forbidden move
	ld [hl], $50  ; forbid (highly discourage) disabled move
.noMoveDisabled
	call ForbidExhaustedMoves					; IDDJY: add this to prevent the AI from choosing moves with no PP left
	ld hl, TrainerClassMoveChoiceModifications
	ld a, [wPlayerClass]						; IDDJY
	ld b, a
.loopTrainerClasses
	dec b
	jr z, .readTrainerClassData
.loopTrainerClassData
	ld a, [hli]
	and a
	jr nz, .loopTrainerClassData
	jr .loopTrainerClasses
.readTrainerClassData
	ld a, [hl]
	and a
	jp z, .useOriginalMoveSet
	push hl
.nextMoveChoiceModification
	pop hl
	ld a, [hli]
	and a
	jr z, .loopFindMinimumEntries
	push hl
	ld hl, PlayerAIMoveChoiceModificationFunctionPointers
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc    ; skip to pointer
	ld a, [hli]   ; read pointer into hl
	ld h, [hl]
	ld l, a
	ld de, .nextMoveChoiceModification  ; set return address
	push de
	jp hl         ; execute modification function
.loopFindMinimumEntries ; all entries will be decremented sequentially until one of them is zero
	ld hl, wBuffer  ; temp move selection array
	ld de, wBattleMonMoves  ; player moves
	ld c, NUM_MOVES
.loopDecrementEntries
	ld a, [de]
	inc de
	and a
	jr z, .skipEmptySlot			; IDDJY don't decrement the value for empty slots so that they are never chosen
	dec [hl]
	jr z, .minimumEntriesFound
.skipEmptySlot						; IDDJY
	inc hl
	dec c
	jr z, .loopFindMinimumEntries
	jr .loopDecrementEntries
.minimumEntriesFound
	ld a, c
.loopUndoPartialIteration ; undo last (partial) loop iteration
	inc [hl]
	dec hl
	inc a
	cp NUM_MOVES + 1
	jr nz, .loopUndoPartialIteration
	ld hl, wBuffer						; temp move selection array
	ld de, wBattleMonMoves
	ld c, NUM_MOVES
.filterMinimalEntries ; all minimal entries now have value 1. All other slots will be disabled (move set to 0)
	ld a, [de]
	and a
	jr nz, .moveExisting
	ld [hl], a
.moveExisting
	ld a, [hl]
	dec a
	jr z, .slotWithMinimalValue
	xor a
	ld [hli], a     ; disable move slot
	jr .next
.slotWithMinimalValue
	ld a, [de]
	ld [hli], a     ; enable move slot
.next
	inc de
	dec c
	jr nz, .filterMinimalEntries
	ld hl, wBuffer    ; use created temporary array as move set
	ret
.useOriginalMoveSet
	ld hl, wBattleMonMoves    ; use original move set
	ret

PlayerAIMoveChoiceModificationFunctionPointers:
	dw PlayerAIMoveChoiceModification1
	dw PlayerAIMoveChoiceModification2
	dw PlayerAIMoveChoiceModification3
	dw PlayerAIMoveChoiceModification4 ; unused, does nothing

; discourages moves that cause no damage but only a status ailment if enemy already has one
PlayerAIMoveChoiceModification1:
	ld a, [wEnemyMonStatus]
	and a
	ret z ; return if no status ailment on enemy's mon
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wBattleMonMoves ; player moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	inc de						; IDDJY
	and a						; IDDJY
	jr z, .nextMove				; IDDJY instead of not looking further than the first empty slot, just skip those
	call ReadMove
	ld a, [wPlayerMovePower]
	and a
	jr nz, .nextMove
	ld a, [wPlayerMoveEffect]
	push hl
	push de
	push bc
	ld hl, StatusAilmentMoveEffects
	ld de, $0001
	call IsInArray
	pop bc
	pop de
	pop hl
	jr nc, .nextMove
	ld a, [hl]
	add $5 ; heavily discourage move
	ld [hl], a
	jr .nextMove

; slightly encourage moves with specific effects.
; in particular, stat-modifying moves and other move effects
; that fall in-between
PlayerAIMoveChoiceModification2:
	ld a, [wPlayerAILayer2Encouragement]
	cp $1
	ret nz
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wBattleMonMoves ; player moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	inc de						; IDDJY
	and a						; IDDJY
	jr z, .nextMove				; IDDJY instead of not looking further than the first empty slot, just skip those
	call ReadMove
	ld a, [wPlayerMoveEffect]
	cp ATTACK_UP1_EFFECT
	jr c, .nextMove
	cp BIDE_EFFECT
	jr c, .preferMove
	cp ATTACK_UP2_EFFECT
	jr c, .nextMove
	cp POISON_EFFECT
	jr c, .preferMove
	jr .nextMove
.preferMove
	dec [hl] ; slightly encourage this move
	jr .nextMove

; encourages moves that are effective against the player's mon (even if non-damaging).
; discourage damaging moves that are ineffective or not very effective against the player's mon,
; unless there's no damaging move that deals at least neutral damage
PlayerAIMoveChoiceModification3:
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wBattleMonMoves ; player moves
	ld b, NUM_MOVES + 1
.nextMove
	dec b
	ret z ; processed all 4 moves
	inc hl
	ld a, [de]
	inc de					; IDDJY
	and a					; IDDJY
	jr z, .nextMove			; IDDJY instead of not looking further than the first empty slot, just skip those
	call ReadMove
	push hl
	push bc
	push de
	callab AIGetTypeEffectiveness
	pop de
	pop bc
	pop hl
	ld a, [wTypeEffectiveness]
	cp $10
	jr z, .nextMove
	jr c, .notEffectiveMove
	dec [hl] ; slightly encourage this move
	jr .nextMove
.notEffectiveMove ; discourages non-effective moves if better moves are available
	push hl
	push de
	push bc
	ld a, [wPlayerMoveType]
	ld d, a
	ld hl, wBattleMonMoves  ; player moves
	ld b, NUM_MOVES + 1
	ld c, $0
.loopMoves
	dec b
	jr z, .done
	push hl					; IDDJY
	ld hl, wBattleMonPP		; IDDJY before examining whether the current move could be better, check its PP
	ld a, NUM_MOVES			; IDDJY
	sub b					; IDDJY make a = NUM_MOVES - b to get the offset of the current potential better move
	add l					; IDDJY
	ld l, a					; IDDJY make hl point to PP of move currently checked
	jr nc, .noCarry			; IDDJY
	inc h					; IDDJY
.noCarry					; IDDJY
	ld a, [hl]				; IDDJY load potential better move PP in a
	and a					; IDDJY check whether PP are exhausted
	pop hl					; IDDJY
	ld a, [hli]				; read current move ID in a
	jr z, .loopMoves		; IDDJY don't take into account moves that have no PP left as potential better moves
	and a
	jr z, .loopMoves		; IDDJY instead of not looking further than the first empty slot, just skip those
	call ReadMove
	ld a, [wPlayerMoveEffect]
	cp SUPER_FANG_EFFECT
	jr z, .betterMoveFound ; Super Fang is considered to be a better move
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .betterMoveFound ; any special damage moves are considered to be better moves
	cp FLY_EFFECT
	jr z, .betterMoveFound ; Fly is considered to be a better move
	ld a, [wPlayerMoveType]
	cp d
	jr z, .loopMoves
	ld a, [wPlayerMovePower]
	and a
	jr nz, .betterMoveFound ; damaging moves of a different type are considered to be better moves
	jr .loopMoves
.betterMoveFound
	ld c, a
.done
	ld a, c
	pop bc
	pop de
	pop hl
	and a
	jr z, .nextMove
	inc [hl] ; slightly discourage this move
	jr .nextMove
PlayerAIMoveChoiceModification4:
	ret

; IDDJY adapted the function for the player side
PlayerAISwitchIfEnoughMons:
; trainer switches if there are 2 or more unfainted mons in party
	ld a, [wPartyCount]
	ld c, a
	ld hl, wPartyMon1HP

	ld d, 0 ; keep count of unfainted monsters

	; count how many monsters haven't fainted yet
.loop
	ld a, [hli]
	ld b, a
	ld a, [hld]
	or b
	jr z, .Fainted ; has monster fainted?
	inc d
.Fainted
	push bc
	ld bc, wPartyMon2 - wPartyMon1
	add hl, bc
	pop bc
	dec c
	jr nz, .loop

	ld a, d ; how many available monsters are there?
	cp 2 ; don't bother if only 1
	jp nc, AISwitchPlayerMon
	and a
	ret

; IDDJY adapted the function for the player side
AISwitchPlayerMon:

; prepare to withdraw the active monster: copy hp, number, and status to roster

	ld a, [wPlayerMonNumber]
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wBattleMonHP
	ld bc, 4
	call CopyData
	ld hl, PlayerAIBattleWithdrawText
	call PrintText
	
	; IDDJY find the next mon in the team that is not fainted
	ld b, $ff
.findMon
	inc b
	ld a, [wPlayerMonNumber]
	cp b
	jr z, .findMon				; can't send out the mon that is already out
	ld hl, wPartyMon1
	ld a, b
	ld [wWhichPokemon], a
	push bc
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	pop bc
	inc hl
	ld a, [hli]
	ld c, a
	ld a, [hl]
	or c
	jr z, .findMon
	ld a, [wWhichPokemon]
	ld hl, wPartySpecies
	ld b, 0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wBattleMonSpecies2], a

	callab SwitchPlayerMon
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret

PlayerAIBattleWithdrawText:
	TX_FAR _PlayerAIBattleWithdrawText
	db "@"
