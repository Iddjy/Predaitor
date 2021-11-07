; creates a set of moves that may be used and returns its address in hl
; unused slots are filled with 0, all used slots may be chosen with equal probability
AIEnemyTrainerChooseMoves:
	ld a, $1				; IDDJY set the turn to the enemy's for AI move selection
	ld [H_WHOSETURN], a		; IDDJY
	ld a, $a
	ld hl, wBuffer ; init temporary move selection array. Only the moves with the lowest numbers are chosen in the end
	ld [hli], a   ; move 1
	ld [hli], a   ; move 2
	ld [hli], a   ; move 3
	ld [hl], a    ; move 4
	ld a, [wEnemyDisabledMove] ; forbid disabled move (if any)
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
	ld a, [wTrainerClass]
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
	ld hl, AIMoveChoiceModificationFunctionPointers
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
	jp hl							; execute modification function
.loopFindMinimumEntries				; all entries will be decremented sequentially until one of them is zero
	ld hl, wBuffer					; temp move selection array
	ld de, wEnemyMonMoves 			; enemy moves
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
	ld de, wEnemyMonMoves
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
	ld hl, wEnemyMonMoves    ; use original move set
	ret

AIMoveChoiceModificationFunctionPointers:
	dw AIMoveChoiceModification1
	dw AIMoveChoiceModification2
	dw AIMoveChoiceModification3
	dw AIMoveChoiceModification4 ; unused, does nothing

; discourages moves that cause no damage but only a status ailment if player's mon already has one
AIMoveChoiceModification1:
	ld a, [wBattleMonStatus]
	and a
	ret z ; return if no status ailment on player's mon
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
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
	ld a, [wEnemyMovePower]
	and a
	jr nz, .nextMove
	ld a, [wEnemyMoveEffect]
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

StatusAilmentMoveEffects:
	db $01 ; unused sleep effect
	db SLEEP_EFFECT
	db POISON_EFFECT
	db PARALYZE_EFFECT
	db $FF

; slightly encourage moves with specific effects.
; in particular, stat-modifying moves and other move effects
; that fall in-between
AIMoveChoiceModification2:
	ld a, [wAILayer2Encouragement]
	cp $1
	ret nz
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
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
	ld a, [wEnemyMoveEffect]
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
AIMoveChoiceModification3:
	ld hl, wBuffer - 1 ; temp move selection array (-1 byte offset)
	ld de, wEnemyMonMoves ; enemy moves
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
	ld a, [wEnemyMoveType]
	ld d, a
	ld hl, wEnemyMonMoves  ; enemy moves
	ld b, NUM_MOVES + 1
	ld c, $0
.loopMoves
	dec b
	jr z, .done
	push hl					; IDDJY
	ld hl, wEnemyMonPP		; IDDJY before examining whether the current move could be better, check its PP
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
	ld a, [wEnemyMoveEffect]
	cp SUPER_FANG_EFFECT
	jr z, .betterMoveFound ; Super Fang is considered to be a better move
	cp SPECIAL_DAMAGE_EFFECT
	jr z, .betterMoveFound ; any special damage moves are considered to be better moves
	cp FLY_EFFECT
	jr z, .betterMoveFound ; Fly is considered to be a better move
	ld a, [wEnemyMoveType]
	cp d
	jr z, .loopMoves
	ld a, [wEnemyMovePower]
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
AIMoveChoiceModification4:
	ret

ReadMove:
	push hl
	push de
	push bc
	dec a
	ld hl, Moves
	ld bc, MoveEnd - Moves
	call AddNTimes
	ld de, wPlayerMoveNum		; IDDJY
	ld a, [H_WHOSETURN]			; IDDJY
	and a						; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .copy					; IDDJY
	ld de, wEnemyMoveNum
.copy							; IDDJY
	call CopyData
	pop bc
	pop de
	pop hl
	ret

; IDDJY takes trainer class as input in d
; IDDJY returns array of MoveChoiceModifications at wcd6d
GetTrainerClassAI:
	ld hl, TrainerClassMoveChoiceModifications
.loop
	dec d
	jr z, .foundClass
.skipEntry
	ld a, [hli]
	and a
	jr z, .loop
	jr .skipEntry
.foundClass
	ld de, wcd6d
.copyEntry
	ld a, [hli]
	ld [de], a
	inc de
	and a
	ret z
	jr .copyEntry
	
; move choice modification methods that are applied for each trainer class
; 0 is sentinel value
TrainerClassMoveChoiceModifications:
	db 0      ; YOUNGSTER
	db 1,0    ; BUG CATCHER
	db 1,0    ; LASS
	db 1,3,0  ; SAILOR
	db 1,0    ; JR_TRAINER_M
	db 1,0    ; JR_TRAINER_F
	db 1,2,3,0; POKEMANIAC
	db 1,2,0  ; SUPER_NERD
	db 1,0    ; HIKER
	db 1,0    ; BIKER
	db 1,3,0  ; BURGLAR
	db 1,0    ; ENGINEER
	db 1,3,0  ; JUGGLER_X
	db 1,3,0  ; FISHER
	db 1,3,0  ; SWIMMER
	db 0      ; CUE_BALL
	db 1,0    ; GAMBLER
	db 1,3,0  ; BEAUTY
	db 1,2,0  ; PSYCHIC_TR
	db 1,3,0  ; ROCKER
	db 1,0    ; JUGGLER
	db 1,0    ; TAMER
	db 1,0    ; BIRD_KEEPER
	db 1,0    ; BLACKBELT
	db 1,0    ; SONY1
	db 1,3,0  ; PROF_OAK
	db 1,2,0  ; CHIEF
	db 1,2,0  ; SCIENTIST
	db 1,3,0  ; GIOVANNI
	db 1,0    ; ROCKET
	db 1,3,0  ; COOLTRAINER_M
	db 1,3,0  ; COOLTRAINER_F
	db 1,0    ; BRUNO
	db 1,0    ; BROCK
	db 1,3,0  ; MISTY
	db 1,3,0  ; LT_SURGE
	db 1,3,0  ; ERIKA
	db 1,3,0  ; KOGA
	db 1,3,0  ; BLAINE
	db 1,3,0  ; SABRINA
	db 1,2,0  ; GENTLEMAN
	db 1,3,0  ; SONY2
	db 1,3,0  ; SONY3
	db 1,2,3,0; LORELEI
	db 1,0    ; CHANNELER
	db 1,0    ; AGATHA
	db 1,3,0  ; LANCE

INCLUDE "engine/battle/trainer_pic_money_pointers.asm"

INCLUDE "text/trainer_names.asm"

INCLUDE "engine/battle/bank_e_misc.asm"

TrainerAI:
	and a
	ld a, [wIsInBattle]
	dec a
	ret z ; if not a trainer, we're done here
	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	ld a, [H_WHOSETURN]			; IDDJY
	and a						; IDDJY made the function symetric so that it can be used both by the player and the opponent
	ld a, [wPlayerClass]		; IDDJY
	ld de, wPlayerAICount		; IDDJY
	jr z, .next					; IDDJY
	ld a, [wTrainerClass]
	ld de, wAICount				; IDDJY
.next							; IDDJY
	dec a
	ld c, a
	ld b, 0
	ld hl, TrainerAIPointers
	add hl, bc
	add hl, bc
	add hl, bc
	ld a, [de]					; IDDJY replaced hardcoded wAICount with de
	and a
	ret z ; if no AI uses left, we're done here
	inc hl
	inc a
	jr nz, .getpointer			; if the AI count is not $ff, skip initialization
	dec hl
	ld a, [hli]					; initialize AI count from the first byte of the pointer
	ld [de], a					; IDDJY replaced hardcoded wAICount with de
.getpointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Random
	jp hl

TrainerAIPointers:
; one entry per trainer class
; first byte, number of times (per Pokémon) it can occur
; next two bytes, pointer to AI subroutine for trainer class
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,JugglerAI ; juggler_x
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 3,JugglerAI ; juggler
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 2,BlackbeltAI ; blackbelt
	dbw 3,GenericAI
	dbw 3,GenericAI
	dbw 1,GenericAI ; chief
	dbw 3,GenericAI
	dbw 1,GiovanniAI ; giovanni
	dbw 3,GenericAI
	dbw 2,CooltrainerMAI ; cooltrainerm
	dbw 1,CooltrainerFAI ; cooltrainerf
	dbw 2,BrunoAI ; bruno
	dbw 5,BrockAI ; brock
	dbw 1,MistyAI ; misty
	dbw 1,LtSurgeAI ; surge
	dbw 1,ErikaAI ; erika
	dbw 2,KogaAI ; koga
	dbw 2,BlaineAI ; blaine
	dbw 1,SabrinaAI ; sabrina
	dbw 3,GenericAI
	dbw 1,Sony2AI ; sony2
	dbw 1,Sony3AI ; sony3
	dbw 2,LoreleiAI ; lorelei
	dbw 3,GenericAI
	dbw 2,AgathaAI ; agatha
	dbw 1,LanceAI ; lance

JugglerAI:
	cp $40
	ret nc
	jp AISwitchIfEnoughMons

BlackbeltAI:
	cp $20
	ret nc
	jp AIUseXAttack

GiovanniAI:
	cp $40
	ret nc
	jp AIUseGuardSpec

CooltrainerMAI:
	cp $40
	ret nc
	jp AIUseXAttack

CooltrainerFAI:
	cp $40
	call CheckItemsEnabled			; IDDJY
	jr z, .noItemUse				; IDDJY
	ld a, $A
	call AICheckIfHPBelowFraction
	jp c, AIUseHyperPotion
.noItemUse							; IDDJY
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AISwitchIfEnoughMons

BrockAI:
; if his active monster has a status condition, use a full heal
	ld a, [H_WHOSETURN]			; IDDJY
	and a						; IDDJY made the function symetric so that it can be used both by the player and the opponent
	ld a, [wBattleMonStatus]	; IDDJY
	jr z, .next					; IDDJY
	ld a, [wEnemyMonStatus]
.next							; IDDJY
	and a
	ret z
	jp AIUseFullHeal

MistyAI:
	cp $40
	ret nc
	jp AIUseXDefend

LtSurgeAI:
	cp $40
	ret nc
	jp AIUseXSpeed

ErikaAI:
	cp $80
	ret nc
	ld a, $A
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

KogaAI:
	cp $40
	ret nc
	jp AIUseXAttack

BlaineAI:
	cp $40
	ret nc
	jp AIUseSuperPotion

SabrinaAI:
	cp $40
	ret nc
	ld a, $A
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseHyperPotion

Sony2AI:
	cp $20
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUsePotion

Sony3AI:
	cp $20
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseFullRestore

LoreleiAI:
	cp $80
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

BrunoAI:
	cp $40
	ret nc
	jp AIUseXDefend

AgathaAI:
	cp $14
	jp c, AISwitchIfEnoughMons
	cp $80
	ret nc
	ld a, 4
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseSuperPotion

LanceAI:
	cp $80
	ret nc
	ld a, 5
	call AICheckIfHPBelowFraction
	ret nc
	jp AIUseHyperPotion

GenericAI:
	and a ; clear carry
	ret

; end of individual trainer AI routines

DecrementAICount:
	ld hl, wPlayerAICount		; IDDJY
	ld a, [H_WHOSETURN]			; IDDJY
	and a						; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next					; IDDJY
	ld hl, wAICount
.next							; IDDJY
	dec [hl]
	call RemoveActorIndicator	; IDDJY
	scf
	ret

AIPlayRestoringSFX:
	ld a, SFX_HEAL_AILMENT
	jp PlaySoundWaitForCurrent

AIUseFullRestore:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	call AICureStatus
	ld a, FULL_RESTORE
	ld [wAIItem], a
	ld de, wHPBarOldHP
	ld hl, wBattleMonHP + 1			; IDDJY
	ld bc, wBattleMonMaxHP + 1		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next						; IDDJY
	ld hl, wEnemyMonHP + 1
	ld bc, wEnemyMonMaxHP + 1		; IDDJY
.next								; IDDJY
	ld a, [hld]
	ld [de], a
	inc de
	ld a, [hli]						; IDDJY
	ld [de], a
	inc de
	ld a, [bc]						; IDDJY
	dec bc							; IDDJY
	ld [de], a
	inc de
	ld [wHPBarMaxHP], a
	ld [hld], a						; IDDJY
	ld a, [bc]						; IDDJY
	ld [de], a
	ld [wHPBarMaxHP+1], a
	ld [hl], a						; IDDJY
	jr AIPrintItemUseAndUpdateHPBar

AIUsePotion:
; enemy trainer heals his monster with a potion
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld a, POTION
	ld b, 20
	jr AIRecoverHP

AIUseSuperPotion:
; enemy trainer heals his monster with a super potion
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld a, SUPER_POTION
	ld b, 50
	jr AIRecoverHP

AIUseHyperPotion:
; enemy trainer heals his monster with a hyper potion
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld a, HYPER_POTION
	ld b, 200
	; fallthrough

AIRecoverHP:
; heal b HP and print "trainer used $(a) on pokemon!"
	ld [wAIItem], a
	ld hl, wBattleMonHP + 1			; IDDJY
	ld de, wBattleMonMaxHP + 1		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next						; IDDJY
	ld hl, wEnemyMonHP + 1
	ld de, wEnemyMonMaxHP + 1		; IDDJY
.next
	ld a, [hl]
	ld [wHPBarOldHP], a
	add b
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [hl]
	ld [wHPBarOldHP+1], a
	ld [wHPBarNewHP+1], a
	jr nc, .noCarry
	inc a
	ld [hl], a
	ld [wHPBarNewHP+1], a
.noCarry
	inc hl
	ld a, [hld]
	ld b, a
	ld a, [de]
	dec de
	ld [wHPBarMaxHP], a
	sub b
	ld a, [hli]
	ld b, a
	ld a, [de]
	ld [wHPBarMaxHP+1], a
	sbc b
	jr nc, AIPrintItemUseAndUpdateHPBar
	inc de
	ld a, [de]
	dec de
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [de]
	ld [hl], a
	ld [wHPBarNewHP+1], a
	; fallthrough

AIPrintItemUseAndUpdateHPBar:
	call AIPrintItemUse_
	coord hl, 10, 9					; IDDJY coordinates of the player's HPBar
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	ld a, $1						; IDDJY to set the HPBarType to player's HUD
	jr z, .next						; IDDJY
	coord hl, 2, 2					; IDDJY coordinates of the enemy's HPBar
	xor a
.next								; IDDJY
	ld [wHPBarType], a
	predef UpdateHPBar2
	jp DecrementAICount

AISwitchIfEnoughMons:
	ld hl, PlayerAISwitchIfEnoughMons	; IDDJY
	ld a, [H_WHOSETURN]					; IDDJY
	and a								; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next							; IDDJY
	ld hl, EnemyAISwitchIfEnoughMons	; IDDJY
.next									; IDDJY
	jp hl								; IDDJY

EnemyAISwitchIfEnoughMons:
; enemy trainer switches if there are 2 or more unfainted mons in party
	ld a, [wEnemyPartyCount]
	ld c, a
	ld hl, wEnemyMon1HP

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
	ld bc, wEnemyMon2 - wEnemyMon1
	add hl, bc
	pop bc
	dec c
	jr nz, .loop

	ld a, d ; how many available monsters are there?
	cp 2 ; don't bother if only 1
	jp nc, SwitchEnemyMon
	and a
	ret

SwitchEnemyMon:

; prepare to withdraw the active monster: copy hp, number, and status to roster

	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonHP
	ld bc, 4
	call CopyData

	ld hl, AIBattleWithdrawText
	call PrintText

	callab SlideTrainerPicOffScreen_	; IDDJY do it here instead of in EnemySendOut
	
	; This wFirstMonsNotOutYet variable is abused to prevent the player from
	; switching in a new mon in response to this switch.
	ld a, 1
	ld [wFirstMonsNotOutYet], a
	callab EnemySendOut
	xor a
	ld [wFirstMonsNotOutYet], a

	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret

AIBattleWithdrawText:
	TX_FAR _AIBattleWithdrawText
	db "@"

AIUseFullHeal:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	call AIPlayRestoringSFX
	call AICureStatus
	ld a, FULL_HEAL
	jp AIPrintItemUse

AICureStatus:
; cures the status of the active pokemon
	ld hl, wPartyMon1Status			; IDDJY
	ld bc, wBattleMonStatus			; IDDJY
	ld de, wPlayerBattleStatus3		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	ld a, [wBattleMonPartyPos]		; IDDJY
	jr z, .next						; IDDJY
	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1Status
	ld bc, wEnemyMonStatus			; IDDJY
	ld de, wEnemyBattleStatus3		; IDDJY
.next								; IDDJY
	push bc							; IDDJY save active mon status address
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	xor a
	ld [hl], a						; clear status in team roster
	pop hl							; IDDJY restore active mon status address in hl
	ld [hl], a						; IDDJY clear status of active mon
	push de							; IDDJY transfer BattleStatus3 from de to hl
	pop hl							; IDDJY transfer BattleStatus3 from de to hl
	res 0, [hl]						; reset toxic bit in BattleStatus3
	ret

AIUseXAccuracy: ; unused
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	call AIPlayRestoringSFX
	ld hl, wPlayerBattleStatus2		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next						; IDDJY
	ld hl, wEnemyBattleStatus2
.next								; IDDJY
	set 0, [hl]
	ld a, X_ACCURACY
	jp AIPrintItemUse

AIUseGuardSpec:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	call AIPlayRestoringSFX
	ld hl, wPlayerBattleStatus2		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next						; IDDJY
	ld hl, wEnemyBattleStatus2
.next								; IDDJY
	set 1, [hl]
	ld a, GUARD_SPEC
	jp AIPrintItemUse

AIUseDireHit: ; unused
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	call AIPlayRestoringSFX
	ld hl, wPlayerBattleStatus2		; IDDJY
	ld a, [H_WHOSETURN]				; IDDJY
	and a							; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next						; IDDJY
	ld hl, wEnemyBattleStatus2
.next								; IDDJY
	set 2, [hl]
	ld a, DIRE_HIT
	jp AIPrintItemUse

AICheckIfHPBelowFraction:
; return carry if enemy trainer's current HP is below 1 / a of the maximum
	ld [H_DIVISOR], a
	ld hl, wBattleMonMaxHP
	ld a, [H_WHOSETURN]
	and a
	jr z, .next
	ld hl, wEnemyMonMaxHP
.next
	ld a, [hli]
	ld [H_DIVIDEND], a
	ld a, [hl]
	ld [H_DIVIDEND + 1], a
	ld b, 2
	call Divide
	ld a, [H_QUOTIENT + 3]
	ld c, a
	ld a, [H_QUOTIENT + 2]
	ld b, a
	ld hl, wBattleMonHP + 1
	ld a, [H_WHOSETURN]
	and a
	jr z, .next2
	ld hl, wEnemyMonHP + 1
.next2
	ld a, [hld]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, d
	sub b
	ret nz
	ld a, e
	sub c
	ret

AIUseXAttack:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld b, $A
	ld a, X_ATTACK
	jr AIIncreaseStat

AIUseXDefend:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld b, $B
	ld a, X_DEFEND
	jr AIIncreaseStat

AIUseXSpeed:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld b, $C
	ld a, X_SPEED
	jr AIIncreaseStat

AIUseXSpecial:
	call CheckItemsEnabled			; IDDJY
	ret z							; IDDJY
	ld b, $D
	ld a, X_SPECIAL
	; fallthrough

AIIncreaseStat:
	ld [wAIItem], a
	push bc
	call AIPrintItemUse_
	pop bc
	ld hl, wPlayerMoveEffect	; IDDJY
	ld a, [H_WHOSETURN]			; IDDJY
	and a						; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next					; IDDJY
	ld hl, wEnemyMoveEffect
.next							; IDDJY
	ld a, [hld]
	push af
	ld a, [hl]
	push af
	push hl
	ld a, ANIM_AF
	ld [hli], a
	ld [hl], b
	callab StatModifierUpEffect
	pop hl
	pop af
	ld [hli], a
	pop af
	ld [hl], a
	jp DecrementAICount

AIPrintItemUse:
	ld [wAIItem], a
	call AIPrintItemUse_
	jp DecrementAICount

AIPrintItemUse_:
; print "x used [wAIItem] on z!"
	call AddActorIndicator
	ld a, [wAIItem]
	ld [wd11e], a
	call GetItemName
	ld hl, AIBattleUseItemText_Player	; IDDJY
	ld a, [H_WHOSETURN]					; IDDJY
	and a								; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next							; IDDJY
	ld hl, AIBattleUseItemText_Enemy	; IDDJY
.next									; IDDJY
	jp PrintText

; IDDJY renamed from AIBattleUseItemText
AIBattleUseItemText_Enemy:
	TX_FAR _AIBattleUseItemText_Enemy	; IDDJY
	db "@"
	
; IDDJY add this for when the player's side AI uses an item
AIBattleUseItemText_Player:
	TX_FAR _AIBattleUseItemText_Player
	db "@"

; IDDJY: This function is used to prevent the AI from choosing a move with no PP left:
ForbidExhaustedMoves:
	ld hl, wBattleMonPP		; IDDJY
	ld a, [H_WHOSETURN]		; IDDJY
	and a					; IDDJY made the function symetric so that it can be used both by the player and the opponent
	jr z, .next				; IDDJY
	ld hl, wEnemyMonPP		; PP of the first move
.next						; IDDJY
	ld de, wBuffer			; temp move selection array
	ld c, NUM_MOVES			; loop counter
.loop
	ld a, [hli]				; load the value of the PP of the first move
	and a
	jr nz, .hasMorePP		; if the move has non-null PP, don't forbid move slot
	ld a, $50				; same value as a disabled move
	ld [de], a				; forbid (highly discourage) move slot
.hasMorePP
	inc de
	dec c					; decrement loop counter
	jr nz, .loop			; if still not null, it means the loop isn't complete, so iterate again
	ret

; IDDJY add this function to check whether items are enabled
; IDDJY sets z flag if items are disabled, unsets it if they're enabled
CheckItemsEnabled:
	ld a, [wEnableItems]
	and a
	ret

; IDDJY add this function to show the actor indicator when a trainer uses an item
AddActorIndicator:
	ld a, [H_WHOSETURN]
	and a
	jr z, .playersTurn
	callab AddEnemyActorIndicator
	ret
.playersTurn
	callab AddPlayerActorIndicator
	ret

; IDDJY add this function to hide the actor indicator after a trainer used an item
RemoveActorIndicator:
	ld a, [H_WHOSETURN]
	and a
	jr z, .playersTurn
	callab RemoveEnemyActorIndicator
	ret
.playersTurn
	callab RemovePlayerActorIndicator
	ret

INCLUDE "engine/battle/player_ai.asm"
