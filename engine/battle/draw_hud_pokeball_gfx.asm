DrawAllPokeballs:
	call LoadPartyPokeballGfx
	call SetupOwnPartyPokeballs
	ld a, [wIsInBattle]
	dec a
	ret z ; return if wild pokémon
	jp SetupEnemyPartyPokeballs

DrawEnemyPokeballs:
	call LoadPartyPokeballGfx
	jp SetupEnemyPartyPokeballs

; IDDJY add this function to draw the player's pokeballs only
DrawPlayerPokeballs:
	call LoadPartyPokeballGfx
	jp SetupOwnPartyPokeballs

LoadPartyPokeballGfx:
	ld de, PokeballTileGraphics
	ld hl, vSprites + $310
	lb bc, BANK(PokeballTileGraphics), (PokeballTileGraphicsEnd - PokeballTileGraphics) / $10
	jp CopyVideoData

SetupOwnPartyPokeballs:
	call PlacePlayerHUDTiles
	ld hl, wPartyMon1
	ld de, wPartyCount
	call SetupPokeballs
	ld a, $60
	ld hl, wBaseCoordX
	ld [hli], a
	ld [hl], a
	ld a, 8
	ld [wHUDPokeballGfxOffsetX], a
	ld hl, wOAMBuffer
	jp WritePokeballOAMData

SetupEnemyPartyPokeballs:
	call PlaceEnemyHUDTilesForBalls
	ld hl, wEnemyMons
	ld de, wEnemyPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $48
	ld [hli], a
	ld [hl], $20
	ld a, -8
	ld [wHUDPokeballGfxOffsetX], a
	ld hl, wOAMBuffer + PARTY_LENGTH * 4
	jp WritePokeballOAMData

SetupPokeballs:
	ld a, [de]
	push af
	ld de, wBuffer
	ld c, PARTY_LENGTH
	ld a, $34 ; empty pokeball
.emptyloop
	ld [de], a
	inc de
	dec c
	jr nz, .emptyloop
	pop af
	ld de, wBuffer
.monloop
	push af
	call PickPokeball
	inc de
	pop af
	dec a
	jr nz, .monloop
	ret

PickPokeball:
	inc hl
	ld a, [hli]
	and a
	jr nz, .alive
	ld a, [hl]
	and a
	ld b, $33 ; crossed ball (fainted)
	jr z, .done_fainted
.alive
	inc hl
	inc hl
	ld a, [hl] ; status
	and a
	ld b, $32 ; black ball (status)
	jr nz, .done
	dec b ; regular ball
	jr .done
.done_fainted
	inc hl
	inc hl
.done
	ld a, b
	ld [de], a
	ld bc, wPartyMon2 - wPartyMon1Status
	add hl, bc ; next mon struct
	ret

WritePokeballOAMData:
	ld de, wBuffer
	ld c, PARTY_LENGTH
.loop
	ld a, [wBaseCoordY]
	ld [hli], a
	ld a, [wBaseCoordX]
	ld [hli], a
	ld a, [de]
	ld [hli], a
	xor a
	ld [hli], a
	ld a, [wBaseCoordX]
	ld b, a
	ld a, [wHUDPokeballGfxOffsetX]
	add b
	ld [wBaseCoordX], a
	inc de
	dec c
	jr nz, .loop
	ret

PlacePlayerHUDTiles:
	ld a, [wWhoIsAttacking]					; IDDJY
	cp 1									; IDDJY
	coord hl, 9, 7							; IDDJY
	ld a, "▶"								; IDDJY
	jr z, .next								; IDDJY
	ld a, " "								; IDDJY
.next										; IDDJY
	ld [hl], a								; IDDJY
	ld hl, PlayerBattleHUDGraphicsTiles
	ld de, wHUDGraphicsTiles
	ld bc, $3
	call CopyData
	coord hl, 18, 10
	ld de, -1
	jr PlaceHUDTiles

PlayerBattleHUDGraphicsTiles:
; The tile numbers for specific parts of the battle display for the player's pokemon
	db $73 ; unused ($73 is hardcoded into the routine that uses these bytes)
	db $77 ; lower-right corner tile of the HUD
	db $6F ; lower-left triangle tile of the HUD

PlaceEnemyHUDTilesForBalls:
	ld hl, EnemyBattleHUDGraphicsTiles
	ld de, wHUDGraphicsTiles
	ld bc, $3
	call CopyData
	coord hl, 1, 2
	ld de, $1
	jr PlaceHUDTiles

PlaceEnemyHUDTiles:
	ld a, [wWhoIsAttacking]					; IDDJY
	cp 2									; IDDJY
	coord hl, 0, 0							; IDDJY
	ld a, "▶"								; IDDJY
	jr z, .next								; IDDJY
	ld a, " "								; IDDJY
.next										; IDDJY
	ld [hl], a								; IDDJY
	ld hl, EnemyBattleHUDGraphicsTiles
	ld de, wHUDGraphicsTiles
	ld bc, $3
	call CopyData
	coord hl, 1, 2
	ld [hl], $73					; IDDJY vertical segment of HUD
	ld bc, SCREEN_WIDTH				; IDDJY
	add hl, bc						; IDDJY add a vertical segment to make room for the enemy's HP
	ld de, $1
	jr PlaceHUDTiles

EnemyBattleHUDGraphicsTiles:
; The tile numbers for specific parts of the battle display for the enemy
	db $73 ; unused ($73 is hardcoded in the routine that uses these bytes)
	db $74 ; lower-left corner tile of the HUD
	db $78 ; lower-right triangle tile of the HUD

PlaceHUDTiles:
	ld [hl], $73					; vertical segment of HUD
	ld bc, SCREEN_WIDTH
	add hl, bc
	ld a, [wHUDGraphicsTiles + 1] ; leftmost tile
	ld [hl], a
	ld a, 8
.loop
	add hl, de
	ld [hl], $76					; horizontal segment of HUD
	dec a
	jr nz, .loop
	add hl, de
	ld a, [wHUDGraphicsTiles + 2] ; rightmost tile
	ld [hl], a
	ret

SetupPlayerAndEnemyPokeballs:
	call LoadPartyPokeballGfx
	ld hl, wEnemyMons				; IDDJY swapped with wPartyMons
	ld de, wEnemyPartyCount			; IDDJY swapped with wPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $58						; IDDJY added 8 to move the balls one tile to the right
	ld [hli], a
	ld [hl], $40
	ld a, 8
	ld [wHUDPokeballGfxOffsetX], a
	ld hl, wOAMBuffer
	call WritePokeballOAMData
	ld hl, wPartyMons				; IDDJY swapped with wEnemyMons
	ld de, wPartyCount				; IDDJY swapped with wEnemyPartyCount
	call SetupPokeballs
	ld hl, wBaseCoordX
	ld a, $58						; IDDJY added 8 to move the balls one tile to the right
	ld [hli], a
	ld [hl], $68
	ld hl, wOAMBuffer + $18
	jp WritePokeballOAMData

; four tiles: pokeball, black pokeball (status ailment), crossed out pokeball (fainted) and pokeball slot (no mon)
PokeballTileGraphics::
	INCBIN "gfx/pokeball.2bpp"
PokeballTileGraphicsEnd:
