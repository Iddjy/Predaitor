SetupBattle_PrintPlayerName:
	ld hl, IndividualTrainerNamesPointers
	ld a, [wPlayerClass]
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl					; store pointer to the first trainer name in the trainer class
	ld a, [wPlayerNo]
	dec a
	ld b, a
	ld c, 0
.nextName
	ld a, c
	cp b
	jr z, .foundName
.skipName
	ld a, [hli]
	cp "@"
	jr nz, .skipName
	ld a, [hl]
	cp "@"					; check if next name is empty, which marks the end of this trainer class
	jr z, .overflow			; if we reached the end of the trainer class, that means wPlayerNo overflowed
	inc c
	jr .nextName
.overflow
	inc b					; check if b is $ff
	jr nz, .noUnderflow		; if yes, wPlayerNo is in fact underflowing, if no, it is a normal overflow
	inc c
	ld a, c
	ld [wPlayerNo], a		; set the trainer number to the last trainer in the class
	dec hl
	dec hl					; skip the 2 @ at the end of the class
.underflowLoop
	ld a, [hld]
	cp "@"
	jr nz, .underflowLoop
	inc hl					; compensate the last loop iteration
	jr .foundName
.noUnderflow
	pop hl					; restore hl to point to the first name in the list
	push hl					; just to leave the stack in the same state as at the start of the loop
	ld a, 1					; trainer numbers within trainer classes start at 1
	ld [wPlayerNo], a		; wrap around trainer number when it goes over the total number in the trainer class
.foundName
	push hl					; save name pointer before calling CopyData
	ld de, wTrainerNameTemp	; copy the name here for the team display
	ld bc, $13
	call CopyData
	pop de					; restore saved pointer directly into de since that's the input we want for PlaceString
	pop hl					; just to drain the stack, no use for the restored value
	coord hl, 8, 4
	call PlaceString
	coord hl, 4, 4
	ld de, wPlayerNo
	lb bc, 1, 3
	call PrintNumber
	coord hl, 7, 4
	ld [hl], "-"
	ret

SetupBattle_PrintTrainerName:
	ld hl, IndividualTrainerNamesPointers
	ld a, [wTrainerClass]
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl					; store pointer to the first trainer name in the trainer class
	ld a, [wTrainerNo]
	dec a
	ld b, a
	ld c, 0
.nextName
	ld a, c
	cp b
	jr z, .foundName
.skipName
	ld a, [hli]
	cp "@"
	jr nz, .skipName
	ld a, [hl]
	cp "@"					; check if next name is empty, which marks the end of this trainer class
	jr z, .overflow			; if we reached the end of the trainer class, that means wTrainerNo overflowed
	inc c
	jr .nextName
.overflow
	inc b					; check if b is $ff
	jr nz, .noUnderflow		; if yes, wTrainerNo is in fact underflowing, if no, it is a normal overflow
	inc c
	ld a, c
	ld [wTrainerNo], a		; set the trainer number to the last trainer in the class
	dec hl
	dec hl					; skip the 2 @ at the end of the class
.underflowLoop
	ld a, [hld]
	cp "@"
	jr nz, .underflowLoop
	inc hl					; compensate the last loop iteration
	jr .foundName
.noUnderflow
	pop hl					; restore hl to point to the first name in the list
	push hl					; just to leave the stack in the same state as at the start of the loop
	ld a, 1					; trainer numbers within trainer classes start at 1
	ld [wTrainerNo], a		; wrap around trainer number when it goes over the total number in the trainer class
.foundName
	push hl					; save name pointer before calling CopyData
	ld de, wTrainerNameTemp	; copy the name here for the team display
	ld bc, $13
	call CopyData
	pop de					; restore saved pointer directly into de since that's the input we want for PlaceString
	pop hl					; just to drain the stack, no use for the value in hl
	coord hl, 8, 8
	call PlaceString
	coord hl, 4, 8
	ld de, wTrainerNo
	lb bc, 1, 3
	call PrintNumber
	coord hl, 7, 8
	ld [hl], "-"
	ret
