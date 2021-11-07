; IDDJY routine to load the individual trainer name
; input : H_WHOSETURN = 0 load into player name, H_WHOSETURN > 0 load into enemy trainer name
LoadIndividualTrainerName:
	ld bc, wPlayerName
	ld hl, wPlayerClass
	ld de, wPlayerNo
	ld a, [H_WHOSETURN]
	and a
	jr z, .next
	ld bc, wTrainerName
	ld hl, wTrainerClass
	ld de, wTrainerNo
.next
	push bc
	ld a, [hl]
	dec a
	add a
	ld c, a
	ld b, 0
	ld hl, IndividualTrainerNamesPointers
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [de]
	ld b, a
.seekTrainerName
	dec b
	jr z, .loadTrainerName
.goToNextName
	ld a, [hli]
	cp "@"
	jr nz, .goToNextName
	jr .seekTrainerName
.loadTrainerName
	pop bc
.copyName
	ld a, [hli]
	ld [bc], a
	inc bc
	cp "@"
	jr nz, .copyName
	ret

; IDDJY pointers per trainer class
IndividualTrainerNamesPointers:
	dw YoungsterNames
	dw BugCatcherNames
	dw LassNames
	dw SailorNames
	dw JrTrainerMNames
	dw JrTrainerFNames
	dw PokemaniacNames
	dw SuperNerdNames
	dw HikerNames
	dw BikerNames
	dw BurglarNames
	dw EngineerNames
	dw Juggler1Names
	dw FishermanNames
	dw SwimmerNames
	dw CueBallNames
	dw GamblerNames
	dw BeautyNames
	dw PsychicNames
	dw RockerNames
	dw JugglerNames
	dw TamerNames
	dw BirdKeeperNames
	dw BlackbeltNames
	dw Rival1Names
	dw ProfOakNames
	dw ChiefNames
	dw ScientistNames
	dw GiovanniNames
	dw RocketNames
	dw CooltrainerMNames
	dw CooltrainerFNames
	dw BrunoNames
	dw BrockNames
	dw MistyNames
	dw LtSurgeNames
	dw ErikaNames
	dw KogaNames
	dw BlaineNames
	dw SabrinaNames
	dw GentlemanNames
	dw Rival2Names
	dw Rival3Names
	dw LoreleiNames
	dw ChannelerNames
	dw AgathaNames
	dw LanceNames
	dw IndividualTrainerNamesEnd

INCLUDE "text/individual_trainer_names.asm"