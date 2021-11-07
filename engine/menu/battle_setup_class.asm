SetupBattle_PrintPlayerClass:
	ld hl, TrainerNames
	ld a, [wPlayerClass]
	cp NUM_TRAINER_CLASSES + 1	; wrap around when trainer class goes over NUM_TRAINER_CLASSES
	jr c, .noOverflow
	ld a, 1						; trainer classes start at 1
	ld [wPlayerClass], a
.noOverflow
	and a
	jr nz, .noUnderflow
	ld a, NUM_TRAINER_CLASSES
	ld [wPlayerClass], a		; in case of underflow, go back to the last trainer class
.noUnderflow
	dec a						; trainer class names start at zero
	ld b, a
	ld c, 0
.nextClass
	ld a, c
	cp b
	jr z, .foundClass
.skipClass
	ld a, [hli]
	cp "@"
	jr nz, .skipClass
	inc c
	jr .nextClass
.foundClass
	push hl
	ld de, wTrainerClassTemp
	ld bc, $13
	call CopyData
	pop de
	coord hl, 7, 3
	call PlaceString
	ret

SetupBattle_PrintTrainerClass:
	ld hl, TrainerNames
	ld a, [wTrainerClass]
	cp NUM_TRAINER_CLASSES + 1	; wrap around when trainer class goes over NUM_TRAINER_CLASSES
	jr c, .noOverflow
	ld a, 1						; trainer classes start at 1
	ld [wTrainerClass], a
.noOverflow
	and a
	jr nz, .noUnderflow
	ld a, NUM_TRAINER_CLASSES
	ld [wTrainerClass], a		; in case of underflow, go back to the last trainer class
.noUnderflow
	dec a						; trainer class names start at zero
	ld b, a
	ld c, 0
.nextClass
	ld a, c
	cp b
	jr z, .foundClass
.skipClass
	ld a, [hli]
	cp "@"
	jr nz, .skipClass
	inc c
	jr .nextClass
.foundClass
	push hl
	ld de, wTrainerClassTemp
	ld bc, $13
	call CopyData
	pop de
	coord hl, 7, 7
	call PlaceString
	ret
