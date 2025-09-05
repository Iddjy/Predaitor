TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw Juggler1Data
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

TrainerData:


YoungsterData:
; Route 3
; Trainer 1
	db RATTATA, 11, $FF, $FF, $FF, $FF
TrainerDataMon1End:
	db EKANS, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
TrainerDataEnd:

; Trainer 2
	db SPEAROW, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mt. Moon 1F
; Trainer 1
	db RATTATA, 10, $FF, $FF, $FF, $FF
	db RATTATA, 10, $FF, $FF, $FF, $FF
	db ZUBAT, 10, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 24
; Trainer 1
	db RATTATA, 14, $FF, $FF, $FF, $FF
	db EKANS, 14, $FF, $FF, $FF, $FF
	db ZUBAT, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 25
; Trainer 1
	db RATTATA, 14, $FF, $FF, $FF, $FF
	db SPEAROW, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SLOWPOKE, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db EKANS, 14, $FF, $FF, $FF, $FF
	db SANDSHREW, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne 1F Rooms
; Trainer 1
	db NIDORAN_M, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 11
; Trainer 1
	db EKANS, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SANDSHREW, 19, $FF, $FF, $FF, $FF
	db ZUBAT, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db RATTATA, 17, $FF, $FF, $FF, $FF
	db RATTATA, 17, $FF, $FF, $FF, $FF
	db RATICATE, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db NIDORAN_M, 18, $FF, $FF, $FF, $FF
	db NIDORINO, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db SPEAROW, 17, $FF, $FF, $FF, $FF
	db RATTATA, 17, $FF, $FF, $FF, $FF
	db RATTATA, 17, $FF, $FF, $FF, $FF
	db SPEAROW, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BugCatcherData:
; Viridian Forest
; Trainer 1
	db WEEDLE, 6, $FF, $FF, $FF, $FF
	db CATERPIE, 6, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db WEEDLE, 7, $FF, $FF, $FF, $FF
	db KAKUNA, 7, $FF, $FF, $FF, $FF
	db WEEDLE, 7, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db WEEDLE, 9, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 3
; Trainer 1
	db CATERPIE, 10, $FF, $FF, $FF, $FF
	db WEEDLE, 10, $FF, $FF, $FF, $FF
	db CATERPIE, 10, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db WEEDLE, 9, $FF, $FF, $FF, $FF
	db KAKUNA, 9, $FF, $FF, $FF, $FF
	db CATERPIE, 9, $FF, $FF, $FF, $FF
	db METAPOD, 9, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db CATERPIE, 11, $FF, $FF, $FF, $FF
	db METAPOD, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mt. Moon 1F
; Trainer 1
	db WEEDLE, 11, $FF, $FF, $FF, $FF
	db KAKUNA, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CATERPIE, 10, $FF, $FF, $FF, $FF
	db METAPOD, 10, $FF, $FF, $FF, $FF
	db CATERPIE, 10, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 24
; Trainer 1
	db CATERPIE, 14, $FF, $FF, $FF, $FF
	db WEEDLE, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 6
; Trainer 1
	db WEEDLE, 16, $FF, $FF, $FF, $FF
	db CATERPIE, 16, $FF, $FF, $FF, $FF
	db WEEDLE, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db BUTTERFREE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db METAPOD, 18, $FF, $FF, $FF, $FF
	db CATERPIE, 18, $FF, $FF, $FF, $FF
	db VENONAT, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 9
; Trainer 1
	db BEEDRILL, 19, $FF, $FF, $FF, $FF
	db BEEDRILL, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CATERPIE, 20, $FF, $FF, $FF, $FF
	db WEEDLE, 20, $FF, $FF, $FF, $FF
	db VENONAT, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


LassData:
; Route 3
; Trainer 1
	db PIDGEY, 9, $FF, $FF, $FF, $FF
	db PIDGEY, 9, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db RATTATA, 10, $FF, $FF, $FF, $FF
	db NIDORAN_M, 10, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db JIGGLYPUFF, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 4
; Trainer 1
	db PARAS, 31, $FF, $FF, $FF, $FF
	db PARAS, 31, $FF, $FF, $FF, $FF
	db PARASECT, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mt. Moon 1F
; Trainer 1
	db ODDISH, 11, $FF, $FF, $FF, $FF
	db BELLSPROUT, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CLEFAIRY, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 24
; Trainer 1
	db PIDGEY, 16, $FF, $FF, $FF, $FF
	db NIDORAN_F, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEY, 14, $FF, $FF, $FF, $FF
	db NIDORAN_F, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 25
; Trainer 1
	db NIDORAN_M, 15, $FF, $FF, $FF, $FF
	db NIDORAN_F, 15, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ODDISH, 13, $FF, $FF, $FF, $FF
	db PIDGEY, 13, $FF, $FF, $FF, $FF
	db ODDISH, 13, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne 1F Rooms
; Trainer 1
	db PIDGEY, 18, $FF, $FF, $FF, $FF
	db NIDORAN_F, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne 2F Rooms
; Trainer 1
	db RATTATA, 18, $FF, $FF, $FF, $FF
	db PIKACHU, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 8
; Trainer 1
	db NIDORAN_F, 23, $FF, $FF, $FF, $FF
	db NIDORINA, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MEOWTH, 24, $FF, $FF, $FF, $FF
	db MEOWTH, 24, $FF, $FF, $FF, $FF
	db MEOWTH, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEY, 19, $FF, $FF, $FF, $FF
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db NIDORAN_M, 19, $FF, $FF, $FF, $FF
	db MEOWTH, 19, $FF, $FF, $FF, $FF
	db PIKACHU, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db CLEFAIRY, 22, $FF, $FF, $FF, $FF
	db CLEFAIRY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Celadon Gym
; Trainer 1
	db BELLSPROUT, 23, $FF, $FF, $FF, $FF
	db WEEPINBELL, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ODDISH, 23, $FF, $FF, $FF, $FF
	db GLOOM, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


SailorData:
; SS Anne Stern
; Trainer 1
	db MACHOP, 18, $FF, $FF, $FF, $FF
	db SHELLDER, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MACHOP, 17, $FF, $FF, $FF, $FF
	db TENTACOOL, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne B1F Rooms
; Trainer 1
	db SHELLDER, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db HORSEA, 17, $FF, $FF, $FF, $FF
	db SHELLDER, 17, $FF, $FF, $FF, $FF
	db TENTACOOL, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db TENTACOOL, 18, $FF, $FF, $FF, $FF
	db STARYU, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db HORSEA, 17, $FF, $FF, $FF, $FF
	db HORSEA, 17, $FF, $FF, $FF, $FF
	db HORSEA, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db MACHOP, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Vermilion Gym
; Trainer 1
	db PIKACHU, 21, $FF, $FF, $FF, $FF
	db PIKACHU, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


JrTrainerMData:
; Pewter Gym
; Trainer 1
	db DIGLETT, 11, $FF, $FF, $FF, $FF
	db SANDSHREW, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 24
; Trainer 1
	db RATTATA, 14, $FF, $FF, $FF, $FF
	db EKANS, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MANKEY, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 25
; Trainer 1
	db RATTATA, 14, $FF, $FF, $FF, $FF
	db EKANS, 14, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	
; Route 6
; Trainer 1
	db SQUIRTLE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SPEAROW, 16, $FF, $FF, $FF, $FF
	db RATICATE, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db DIGLETT, 18, $FF, $FF, $FF, $FF
	db DIGLETT, 18, $FF, $FF, $FF, $FF
	db SANDSHREW, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 9
; Trainer 1
	db GROWLITHE, 21, $FF, $FF, $FF, $FF
	db CHARMANDER, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db DIGLETT, 19, $FF, $FF, $FF, $FF
	db EKANS, 19, $FF, $FF, $FF, $FF
	db SANDSHREW, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 12
; Trainer 1
	db NIDORAN_M, 29, $FF, $FF, $FF, $FF
	db NIDORINO, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


JrTrainerFData:
; Cerulean Gym
; Trainer 1
	db GOLDEEN, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 6
; Trainer 1
	db RATTATA, 16, $FF, $FF, $FF, $FF
	db PIKACHU, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEY, 16, $FF, $FF, $FF, $FF
	db PIDGEY, 16, $FF, $FF, $FF, $FF
	db PIDGEY, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db BULBASAUR, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 9
; Trainer 1
	db ODDISH, 18, $FF, $FF, $FF, $FF
	db BELLSPROUT, 18, $FF, $FF, $FF, $FF
	db ODDISH, 18, $FF, $FF, $FF, $FF
	db BELLSPROUT, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MEOWTH, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 10
; Trainer 1
	db PIKACHU, 20, $FF, $FF, $FF, $FF
	db CLEFAIRY, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEY, 21, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel B1F
; Trainer 1
	db JIGGLYPUFF, 21, $FF, $FF, $FF, $FF
	db PIDGEY, 21, $FF, $FF, $FF, $FF
	db MEOWTH, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ODDISH, 22, $FF, $FF, $FF, $FF
	db BULBASAUR, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Celadon Gym
; Trainer 1
	db BULBASAUR, 24, $FF, $FF, $FF, $FF
	db IVYSAUR, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 13
; Trainer 1
	db PIDGEY, 24, $FF, $FF, $FF, $FF
	db MEOWTH, 24, $FF, $FF, $FF, $FF
	db RATTATA, 24, $FF, $FF, $FF, $FF
	db PIKACHU, 24, $FF, $FF, $FF, $FF
	db MEOWTH, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db POLIWAG, 30, $FF, $FF, $FF, $FF
	db POLIWAG, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEY, 27, $FF, $FF, $FF, $FF
	db MEOWTH, 27, $FF, $FF, $FF, $FF
	db PIDGEY, 27, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db GOLDEEN, 28, $FF, $FF, $FF, $FF
	db POLIWAG, 28, $FF, $FF, $FF, $FF
	db HORSEA, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db GOLDEEN, 31, $FF, $FF, $FF, $FF
	db SEAKING, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel 1F
; Trainer 1
	db BELLSPROUT, 22, $FF, $FF, $FF, $FF
	db CLEFAIRY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MEOWTH, 20, $FF, $FF, $FF, $FF
	db ODDISH, 20, $FF, $FF, $FF, $FF
	db PIDGEY, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEY, 19, $FF, $FF, $FF, $FF
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db BELLSPROUT, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 15
; Trainer 1
	db GLOOM, 28, $FF, $FF, $FF, $FF
	db ODDISH, 28, $FF, $FF, $FF, $FF
	db ODDISH, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIKACHU, 29, $FF, $FF, $FF, $FF
	db RAICHU, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db CLEFAIRY, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db BELLSPROUT, 29, $FF, $FF, $FF, $FF
	db ODDISH, 29, $FF, $FF, $FF, $FF
	db TANGELA, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db TENTACOOL, 30, $FF, $FF, $FF, $FF
	db HORSEA, 30, $FF, $FF, $FF, $FF
	db SEEL, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


PokemaniacData:
; Route 10
; Trainer 1
	db RHYHORN, 30, $FF, $FF, $FF, $FF
	db LICKITUNG, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CUBONE, 20, $FF, $FF, $FF, $FF
	db SLOWPOKE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel B1F
; Trainer 1
	db SLOWPOKE, 20, $FF, $FF, $FF, $FF
	db SLOWPOKE, 20, $FF, $FF, $FF, $FF
	db SLOWPOKE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CHARMANDER, 22, $FF, $FF, $FF, $FF
	db CUBONE, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db SLOWPOKE, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 2F
; Trainer 1
	db CHARMELEON, 40, $FF, $FF, $FF, $FF
	db LAPRAS, 40, $FF, $FF, $FF, $FF
	db LICKITUNG, 40, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel 1F
; Trainer 1
	db CUBONE, 23, $FF, $FF, $FF, $FF
	db SLOWPOKE, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


SuperNerdData:
; Mt. Moon 1F
; Trainer 1
	db MAGNEMITE, 11, $FF, $FF, $FF, $FF
	db VOLTORB, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mt. Moon B2F
; Trainer 1
	db GRIMER, 12, $FF, $FF, $FF, $FF
	db VOLTORB, 12, $FF, $FF, $FF, $FF
	db KOFFING, 12, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 8
; Trainer 1
	db VOLTORB, 20, $FF, $FF, $FF, $FF
	db KOFFING, 20, $FF, $FF, $FF, $FF
	db VOLTORB, 20, $FF, $FF, $FF, $FF
	db MAGNEMITE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GRIMER, 22, $FF, $FF, $FF, $FF
	db MUK, 22, $FF, $FF, $FF, $FF
	db GRIMER, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db KOFFING, 22, $FF, $FF, $FF, $FF
	db MAGNEMITE, 22, $FF, $FF, $FF, $FF
	db WEEZING, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db MAGNEMITE, 20, $FF, $FF, $FF, $FF
	db MAGNEMITE, 20, $FF, $FF, $FF, $FF
	db KOFFING, 20, $FF, $FF, $FF, $FF
	db MAGNEMITE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db MAGNEMITE, 24, $FF, $FF, $FF, $FF
	db VOLTORB, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Cinnabar Gym
; Trainer 1
	db VULPIX, 36, $FF, $FF, $FF, $FF
	db VULPIX, 36, $FF, $FF, $FF, $FF
	db NINETALES, 36, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PONYTA, 34, $FF, $FF, $FF, $FF
	db CHARMANDER, 34, $FF, $FF, $FF, $FF
	db VULPIX, 34, $FF, $FF, $FF, $FF
	db GROWLITHE, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db RAPIDASH, 41, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db GROWLITHE, 37, $FF, $FF, $FF, $FF
	db VULPIX, 37, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


HikerData:
; Mt. Moon 1F
; Trainer 1
	db GEODUDE, 10, $FF, $FF, $FF, $FF
	db GEODUDE, 10, $FF, $FF, $FF, $FF
	db ONIX, 10, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 25
; Trainer 1
	db MACHOP, 15, $FF, $FF, $FF, $FF
	db GEODUDE, 15, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GEODUDE, 13, $FF, $FF, $FF, $FF
	db GEODUDE, 13, $FF, $FF, $FF, $FF
	db MACHOP, 13, $FF, $FF, $FF, $FF
	db GEODUDE, 13, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db ONIX, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 9
; Trainer 1
	db GEODUDE, 21, $FF, $FF, $FF, $FF
	db ONIX, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GEODUDE, 20, $FF, $FF, $FF, $FF
	db MACHOP, 20, $FF, $FF, $FF, $FF
	db GEODUDE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 9
; Trainer 1
	db MACHOP, 20, $FF, $FF, $FF, $FF
	db ONIX, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	
; Route 10
; Trainer 1
	db GEODUDE, 21, $FF, $FF, $FF, $FF
	db ONIX, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ONIX, 19, $FF, $FF, $FF, $FF
	db GRAVELER, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel B1F
; Trainer 1
	db GEODUDE, 21, $FF, $FF, $FF, $FF
	db GEODUDE, 21, $FF, $FF, $FF, $FF
	db GRAVELER, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GEODUDE, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MACHOP, 20, $FF, $FF, $FF, $FF
	db ONIX, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rock Tunnel 1F
; Trainer 1
	db GEODUDE, 19, $FF, $FF, $FF, $FF
	db MACHOP, 19, $FF, $FF, $FF, $FF
	db GEODUDE, 19, $FF, $FF, $FF, $FF
	db GEODUDE, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ONIX, 20, $FF, $FF, $FF, $FF
	db ONIX, 20, $FF, $FF, $FF, $FF
	db GEODUDE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GEODUDE, 21, $FF, $FF, $FF, $FF
	db GRAVELER, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BikerData:
; Route 13
; Trainer 1
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 14
; Trainer 1
	db KOFFING, 29, $FF, $FF, $FF, $FF
	db GRIMER, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 15
; Trainer 1
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db WEEZING, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db GRIMER, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db GRIMER, 28, $FF, $FF, $FF, $FF
	db WEEZING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 16
; Trainer 1
	db GRIMER, 29, $FF, $FF, $FF, $FF
	db KOFFING, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db WEEZING, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 17
; Trainer 1
	db WEEZING, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db WEEZING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MUK, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db VOLTORB, 29, $FF, $FF, $FF, $FF
	db VOLTORB, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db WEEZING, 29, $FF, $FF, $FF, $FF
	db MUK, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db WEEZING, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db WEEZING, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 14
; Trainer 1
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GRIMER, 28, $FF, $FF, $FF, $FF
	db GRIMER, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db KOFFING, 29, $FF, $FF, $FF, $FF
	db MUK, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BurglarData:
; Unused
	db GROWLITHE, 29, $FF, $FF, $FF, $FF
	db VULPIX, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GROWLITHE, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db VULPIX, 28, $FF, $FF, $FF, $FF
	db CHARMANDER, 28, $FF, $FF, $FF, $FF
	db PONYTA, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Cinnabar Gym
; Trainer 1
	db GROWLITHE, 36, $FF, $FF, $FF, $FF
	db VULPIX, 36, $FF, $FF, $FF, $FF
	db NINETALES, 36, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PONYTA, 41, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db VULPIX, 37, $FF, $FF, $FF, $FF
	db GROWLITHE, 37, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mansion 2F
; Trainer 1
	db CHARMANDER, 34, $FF, $FF, $FF, $FF
	db CHARMELEON, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mansion 3F
; Trainer 1
	db NINETALES, 38, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mansion B1F
; Trainer 1
	db GROWLITHE, 34, $FF, $FF, $FF, $FF
	db PONYTA, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


EngineerData:
; Unused
	db VOLTORB, 21, $FF, $FF, $FF, $FF
	db MAGNEMITE, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 11
; Trainer 1
	db MAGNEMITE, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MAGNEMITE, 18, $FF, $FF, $FF, $FF
	db MAGNEMITE, 18, $FF, $FF, $FF, $FF
	db MAGNETON, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


Juggler1Data:
; none
	db 0	; IDDJY this is to signal that the trainer class is empty


FisherData:
; SS Anne 2F Rooms
; Trainer 1
	db GOLDEEN, 17, $FF, $FF, $FF, $FF
	db TENTACOOL, 17, $FF, $FF, $FF, $FF
	db GOLDEEN, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne B1F Rooms
; Trainer 1
	db TENTACOOL, 17, $FF, $FF, $FF, $FF
	db STARYU, 17, $FF, $FF, $FF, $FF
	db SHELLDER, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 12
; Trainer 1
	db GOLDEEN, 22, $FF, $FF, $FF, $FF
	db POLIWAG, 22, $FF, $FF, $FF, $FF
	db GOLDEEN, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db TENTACOOL, 24, $FF, $FF, $FF, $FF
	db GOLDEEN, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GOLDEEN, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db POLIWAG, 21, $FF, $FF, $FF, $FF
	db SHELLDER, 21, $FF, $FF, $FF, $FF
	db GOLDEEN, 21, $FF, $FF, $FF, $FF
	db HORSEA, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 21
; Trainer 1
	db SEAKING, 28, $FF, $FF, $FF, $FF
	db GOLDEEN, 28, $FF, $FF, $FF, $FF
	db SEAKING, 28, $FF, $FF, $FF, $FF
	db SEAKING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SHELLDER, 31, $FF, $FF, $FF, $FF
	db CLOYSTER, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MAGIKARP, 27, $FF, $FF, $FF, $FF
	db MAGIKARP, 27, $FF, $FF, $FF, $FF
	db MAGIKARP, 27, $FF, $FF, $FF, $FF
	db MAGIKARP, 27, $FF, $FF, $FF, $FF
	db MAGIKARP, 27, $FF, $FF, $FF, $FF
	db MAGIKARP, 27, $FF, $FF, $FF, $FF

; Trainer 4
	db SEAKING, 33, $FF, $FF, $FF, $FF
	db GOLDEEN, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 12
; Trainer 1
	db MAGIKARP, 24, $FF, $FF, $FF, $FF
	db MAGIKARP, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


SwimmerData:
; Cerulean Gym
; Trainer 1
	db HORSEA, 16, $FF, $FF, $FF, $FF
	db SHELLDER, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 19
; Trainer 1
	db TENTACOOL, 30, $FF, $FF, $FF, $FF
	db SHELLDER, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GOLDEEN, 29, $FF, $FF, $FF, $FF
	db HORSEA, 29, $FF, $FF, $FF, $FF
	db STARYU, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db POLIWAG, 30, $FF, $FF, $FF, $FF
	db POLIWHIRL, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db HORSEA, 27, $FF, $FF, $FF, $FF
	db TENTACOOL, 27, $FF, $FF, $FF, $FF
	db TENTACOOL, 27, $FF, $FF, $FF, $FF
	db GOLDEEN, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db GOLDEEN, 29, $FF, $FF, $FF, $FF
	db SHELLDER, 29, $FF, $FF, $FF, $FF
	db SEAKING, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 6
	db HORSEA, 30, $FF, $FF, $FF, $FF
	db HORSEA, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 7
	db TENTACOOL, 27, $FF, $FF, $FF, $FF
	db TENTACOOL, 27, $FF, $FF, $FF, $FF
	db STARYU, 27, $FF, $FF, $FF, $FF
	db HORSEA, 27, $FF, $FF, $FF, $FF
	db TENTACRUEL, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db SHELLDER, 31, $FF, $FF, $FF, $FF
	db CLOYSTER, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db STARYU, 35, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db HORSEA, 28, $FF, $FF, $FF, $FF
	db HORSEA, 28, $FF, $FF, $FF, $FF
	db SEADRA, 28, $FF, $FF, $FF, $FF
	db HORSEA, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 21
; Trainer 1
	db SEADRA, 33, $FF, $FF, $FF, $FF
	db TENTACRUEL, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db STARMIE, 37, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db STARYU, 33, $FF, $FF, $FF, $FF
	db WARTORTLE, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db POLIWHIRL, 32, $FF, $FF, $FF, $FF
	db TENTACOOL, 32, $FF, $FF, $FF, $FF
	db SEADRA, 32, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


CueBallData:
; Route 16
; Trainer 1
	db MACHOP, 28, $FF, $FF, $FF, $FF
	db MANKEY, 28, $FF, $FF, $FF, $FF
	db MACHOP, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MANKEY, 29, $FF, $FF, $FF, $FF
	db MACHOP, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MACHOP, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 17
; Trainer 1
	db MANKEY, 29, $FF, $FF, $FF, $FF
	db PRIMEAPE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MACHOP, 29, $FF, $FF, $FF, $FF
	db MACHOKE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MACHOKE, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db MANKEY, 26, $FF, $FF, $FF, $FF
	db MANKEY, 26, $FF, $FF, $FF, $FF
	db MACHOKE, 26, $FF, $FF, $FF, $FF
	db MACHOP, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db PRIMEAPE, 29, $FF, $FF, $FF, $FF
	db MACHOKE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 21
; Trainer 1
	db TENTACOOL, 31, $FF, $FF, $FF, $FF
	db TENTACOOL, 31, $FF, $FF, $FF, $FF
	db TENTACRUEL, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


GamblerData:
; Route 11
; Trainer 1
	db POLIWAG, 18, $FF, $FF, $FF, $FF
	db HORSEA, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db BELLSPROUT, 18, $FF, $FF, $FF, $FF
	db ODDISH, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db VOLTORB, 18, $FF, $FF, $FF, $FF
	db MAGNEMITE, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db GROWLITHE, 18, $FF, $FF, $FF, $FF
	db VULPIX, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 8
; Trainer 1
	db POLIWAG, 22, $FF, $FF, $FF, $FF
	db POLIWAG, 22, $FF, $FF, $FF, $FF
	db POLIWHIRL, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db ONIX, 22, $FF, $FF, $FF, $FF
	db GEODUDE, 22, $FF, $FF, $FF, $FF
	db GRAVELER, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 8
; Trainer 1
	db GROWLITHE, 24, $FF, $FF, $FF, $FF
	db VULPIX, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BeautyData:
; Celadon Gym
; Trainer 1
	db ODDISH, 21, $FF, $FF, $FF, $FF
	db BELLSPROUT, 21, $FF, $FF, $FF, $FF
	db ODDISH, 21, $FF, $FF, $FF, $FF
	db BELLSPROUT, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db BELLSPROUT, 24, $FF, $FF, $FF, $FF
	db BELLSPROUT, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db EXEGGCUTE, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 13
; Trainer 1
	db RATTATA, 27, $FF, $FF, $FF, $FF
	db PIKACHU, 27, $FF, $FF, $FF, $FF
	db RATTATA, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CLEFAIRY, 29, $FF, $FF, $FF, $FF
	db MEOWTH, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db SEAKING, 35, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SHELLDER, 30, $FF, $FF, $FF, $FF
	db SHELLDER, 30, $FF, $FF, $FF, $FF
	db CLOYSTER, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db POLIWAG, 31, $FF, $FF, $FF, $FF
	db SEAKING, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 15
; Trainer 1
	db PIDGEOTTO, 29, $FF, $FF, $FF, $FF
	db WIGGLYTUFF, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db BULBASAUR, 29, $FF, $FF, $FF, $FF
	db IVYSAUR, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db WEEPINBELL, 33, $FF, $FF, $FF, $FF
	db BELLSPROUT, 33, $FF, $FF, $FF, $FF
	db WEEPINBELL, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 19
; Trainer 1
	db POLIWAG, 27, $FF, $FF, $FF, $FF
	db GOLDEEN, 27, $FF, $FF, $FF, $FF
	db SEAKING, 27, $FF, $FF, $FF, $FF
	db GOLDEEN, 27, $FF, $FF, $FF, $FF
	db POLIWAG, 27, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GOLDEEN, 30, $FF, $FF, $FF, $FF
	db SEAKING, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db STARYU, 29, $FF, $FF, $FF, $FF
	db STARYU, 29, $FF, $FF, $FF, $FF
	db STARYU, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db SEADRA, 30, $FF, $FF, $FF, $FF
	db HORSEA, 30, $FF, $FF, $FF, $FF
	db SEADRA, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


PsychicData:
; Saffron Gym
; Trainer 1
	db KADABRA, 31, $FF, $FF, $FF, $FF
	db SLOWPOKE, 31, $FF, $FF, $FF, $FF
	db MR_MIME, 31, $FF, $FF, $FF, $FF
	db KADABRA, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MR_MIME, 34, $FF, $FF, $FF, $FF
	db KADABRA, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db SLOWPOKE, 33, $FF, $FF, $FF, $FF
	db SLOWPOKE, 33, $FF, $FF, $FF, $FF
	db SLOWBRO, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db SLOWBRO, 38, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


RockerData:
; Vermilion Gym
; Trainer 1
	db VOLTORB, 20, $FF, $FF, $FF, $FF
	db MAGNEMITE, 20, $FF, $FF, $FF, $FF
	db VOLTORB, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 12
; Trainer 1
	db VOLTORB, 29, $FF, $FF, $FF, $FF
	db ELECTRODE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


JugglerData:
; Silph Co. 5F
; Trainer 1
	db KADABRA, 29, $FF, $FF, $FF, $FF
	db MR_MIME, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 2F
; Trainer 1
	db DROWZEE, 41, $FF, $FF, $FF, $FF
	db HYPNO, 41, $FF, $FF, $FF, $FF
	db KADABRA, 41, $FF, $FF, $FF, $FF
	db KADABRA, 41, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Fuchsia Gym
; Trainer 1
	db DROWZEE, 31, $FF, $FF, $FF, $FF
	db DROWZEE, 31, $FF, $FF, $FF, $FF
	db KADABRA, 31, $FF, $FF, $FF, $FF
	db DROWZEE, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db DROWZEE, 34, $FF, $FF, $FF, $FF
	db HYPNO, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 2F
; Trainer 1
	db MR_MIME, 48, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db HYPNO, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Fuchsia Gym
; Trainer 1
	db HYPNO, 38, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db DROWZEE, 34, $FF, $FF, $FF, $FF
	db KADABRA, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


TamerData:
; Fuchsia Gym
; Trainer 1
	db SANDSLASH, 34, $FF, $FF, $FF, $FF
	db ARBOK, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ARBOK, 33, $FF, $FF, $FF, $FF
	db SANDSLASH, 33, $FF, $FF, $FF, $FF
	db ARBOK, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Viridian Gym
; Trainer 1
	db RHYHORN, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ARBOK, 39, $FF, $FF, $FF, $FF
	db TAUROS, 39, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 2F
; Trainer 1
	db PERSIAN, 44, $FF, $FF, $FF, $FF
	db GOLDUCK, 44, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db RHYHORN, 42, $FF, $FF, $FF, $FF
	db PRIMEAPE, 42, $FF, $FF, $FF, $FF
	db ARBOK, 42, $FF, $FF, $FF, $FF
	db TAUROS, 42, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BirdKeeperData:
; Route 13
; Trainer 1
	db PIDGEY, 29, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SPEAROW, 25, $FF, $FF, $FF, $FF
	db PIDGEY, 25, $FF, $FF, $FF, $FF
	db PIDGEY, 25, $FF, $FF, $FF, $FF
	db SPEAROW, 25, $FF, $FF, $FF, $FF
	db SPEAROW, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEY, 26, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 26, $FF, $FF, $FF, $FF
	db SPEAROW, 26, $FF, $FF, $FF, $FF
	db FEAROW, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 14
; Trainer 1
	db FARFETCHD, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SPEAROW, 29, $FF, $FF, $FF, $FF
	db FEAROW, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 15
; Trainer 1
	db PIDGEOTTO, 26, $FF, $FF, $FF, $FF
	db FARFETCHD, 26, $FF, $FF, $FF, $FF
	db DODUO, 26, $FF, $FF, $FF, $FF
	db PIDGEY, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db DODRIO, 28, $FF, $FF, $FF, $FF
	db DODUO, 28, $FF, $FF, $FF, $FF
	db DODUO, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 18
; Trainer 1
	db SPEAROW, 29, $FF, $FF, $FF, $FF
	db FEAROW, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db DODRIO, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db SPEAROW, 26, $FF, $FF, $FF, $FF
	db SPEAROW, 26, $FF, $FF, $FF, $FF
	db FEAROW, 26, $FF, $FF, $FF, $FF
	db SPEAROW, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 20
; Trainer 1
	db FEAROW, 30, $FF, $FF, $FF, $FF
	db FEAROW, 30, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 30, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db PIDGEOTTO, 39, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 39, $FF, $FF, $FF, $FF
	db PIDGEY, 39, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 39, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db FARFETCHD, 42, $FF, $FF, $FF, $FF
	db FEAROW, 42, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 14
; Trainer 1
	db PIDGEY, 28, $FF, $FF, $FF, $FF
	db DODUO, 28, $FF, $FF, $FF, $FF
	db PIDGEOTTO, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEY, 26, $FF, $FF, $FF, $FF
	db SPEAROW, 26, $FF, $FF, $FF, $FF
	db PIDGEY, 26, $FF, $FF, $FF, $FF
	db FEAROW, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOTTO, 29, $FF, $FF, $FF, $FF
	db FEAROW, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db SPEAROW, 28, $FF, $FF, $FF, $FF
	db DODUO, 28, $FF, $FF, $FF, $FF
	db FEAROW, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BlackbeltData:
; Fighting Dojo
; Trainer 1
	db HITMONLEE, 37, $FF, $FF, $FF, $FF
	db HITMONCHAN, 37, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MANKEY, 31, $FF, $FF, $FF, $FF
	db MANKEY, 31, $FF, $FF, $FF, $FF
	db PRIMEAPE, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MACHOP, 32, $FF, $FF, $FF, $FF
	db MACHOKE, 32, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db PRIMEAPE, 36, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db MACHOP, 31, $FF, $FF, $FF, $FF
	db MANKEY, 31, $FF, $FF, $FF, $FF
	db PRIMEAPE, 31, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Viridian Gym
; Trainer 1
	db MACHOP, 40, $FF, $FF, $FF, $FF
	db MACHOKE, 40, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MACHOKE, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db MACHOKE, 38, $FF, $FF, $FF, $FF
	db MACHOP, 38, $FF, $FF, $FF, $FF
	db MACHOKE, 38, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 2F
; Trainer 1
	db MACHOKE, 43, $FF, $FF, $FF, $FF
	db MACHOP, 43, $FF, $FF, $FF, $FF
	db MACHOKE, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


Green1Data:
; Trainer 1
	db SQUIRTLE, 5, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db BULBASAUR, 5, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db CHARMANDER, 5, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 22
; Trainer 1
	db PIDGEY, 9, $FF, $FF, $FF, $FF
	db SQUIRTLE, 8, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEY, 9, $FF, $FF, $FF, $FF
	db BULBASAUR, 8, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEY, 9, $FF, $FF, $FF, $FF
	db CHARMANDER, 8, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Cerulean City
; Trainer 1
	db PIDGEOTTO, 18, $FF, $FF, $FF, $FF
	db ABRA, 15, $FF, $FF, $FF, $FF
	db RATTATA, 15, $FF, $FF, $FF, $FF
	db SQUIRTLE, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEOTTO, 18, $FF, $FF, $FF, $FF
	db ABRA, 15, $FF, $FF, $FF, $FF
	db RATTATA, 15, $FF, $FF, $FF, $FF
	db BULBASAUR, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOTTO, 18, $FF, $FF, $FF, $FF
	db ABRA, 15, $FF, $FF, $FF, $FF
	db RATTATA, 15, $FF, $FF, $FF, $FF
	db CHARMANDER, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


ProfOakData:
; Unused
	db TAUROS, 66, $FF, $FF, $FF, $FF
	db EXEGGUTOR, 67, $FF, $FF, $FF, $FF
	db ARCANINE, 68, $FF, $FF, $FF, $FF
	db BLASTOISE, 69, $FF, $FF, $FF, $FF
	db GYARADOS, 70, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db TAUROS, 66, $FF, $FF, $FF, $FF
	db EXEGGUTOR, 67, $FF, $FF, $FF, $FF
	db ARCANINE, 68, $FF, $FF, $FF, $FF
	db VENUSAUR, 69, $FF, $FF, $FF, $FF
	db GYARADOS, 70, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db TAUROS, 66, $FF, $FF, $FF, $FF
	db EXEGGUTOR, 67, $FF, $FF, $FF, $FF
	db ARCANINE, 68, $FF, $FF, $FF, $FF
	db CHARIZARD, 69, $FF, $FF, $FF, $FF
	db GYARADOS, 70, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


ChiefData:
; none
	db 0	; IDDJY this is to signal that the trainer class is empty


ScientistData:
; Unused
	db KOFFING, 34, $FF, $FF, $FF, $FF
	db VOLTORB, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 2F
; Trainer 1
	db GRIMER, 26, $FF, $FF, $FF, $FF
	db WEEZING, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db WEEZING, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MAGNEMITE, 28, $FF, $FF, $FF, $FF
	db VOLTORB, 28, $FF, $FF, $FF, $FF
	db MAGNETON, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 3F
; Trainer 1
	db ELECTRODE, 29, $FF, $FF, $FF, $FF
	db WEEZING, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 4F
; Trainer 1
	db ELECTRODE, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 5F
; Trainer 1
	db MAGNETON, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db WEEZING, 26, $FF, $FF, $FF, $FF
	db MAGNEMITE, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 6F
; Trainer 1
	db VOLTORB, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db MAGNETON, 25, $FF, $FF, $FF, $FF
	db MAGNEMITE, 25, $FF, $FF, $FF, $FF
	db KOFFING, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 7F
; Trainer 1
	db ELECTRODE, 29, $FF, $FF, $FF, $FF
	db MUK, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 8F
; Trainer 1
	db GRIMER, 29, $FF, $FF, $FF, $FF
	db ELECTRODE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 9F
; Trainer 1
	db VOLTORB, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db MAGNETON, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 10F
; Trainer 1
	db MAGNEMITE, 29, $FF, $FF, $FF, $FF
	db KOFFING, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mansion 1F
; Trainer 1
	db ELECTRODE, 29, $FF, $FF, $FF, $FF
	db WEEZING, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	
; Mansion 3F
; Trainer 1
	db MAGNEMITE, 33, $FF, $FF, $FF, $FF
	db MAGNETON, 33, $FF, $FF, $FF, $FF
	db VOLTORB, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Mansion B1F
; Trainer 1
	db MAGNEMITE, 34, $FF, $FF, $FF, $FF
	db ELECTRODE, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


GiovanniData:
; Rocket Hideout B4F
; Trainer 1
	db ONIX, 25, $FF, $FF, $FF, $FF
	db RHYHORN, 24, $FF, $FF, $FF, $FF
	db KANGASKHAN, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 11F
; Trainer 1
	db NIDORINO, 37, $FF, $FF, $FF, $FF
	db KANGASKHAN, 35, $FF, $FF, $FF, $FF
	db RHYHORN, 37, $FF, $FF, $FF, $FF
	db NIDOQUEEN, 41, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Viridian Gym
; Trainer 1
;	db RHYHORN, 45, $FF, $FF, $FF, $FF
;	db DUGTRIO, 42, $FF, $FF, $FF, $FF
;	db NIDOQUEEN, 44, $FF, $FF, $FF, $FF
;	db NIDOKING, 45, $FF, $FF, $FF, $FF
;	db RHYDON, 50, $FF, $FF, FISSURE, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Mitch from PTCG
	db HITMONLEE, 30, DOUBLE_KICK, MEDITATE, 0, 0
	db HITMONCHAN, 33, COMET_PUNCH, AGILITY, FIRE_PUNCH, 0
	db PRIMEAPE, 35, LEER, KARATE_CHOP, FURY_SWIPES, SEISMIC_TOSS
	db MACHAMP, 67, KARATE_CHOP, LOW_KICK, SEISMIC_TOSS, SUBMISSION
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

RocketData:
; Mt. Moon B2F
; Trainer 1
	db RATTATA, 13, $FF, $FF, $FF, $FF
	db ZUBAT, 13, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db SANDSHREW, 11, $FF, $FF, $FF, $FF
	db RATTATA, 11, $FF, $FF, $FF, $FF
	db ZUBAT, 11, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db ZUBAT, 12, $FF, $FF, $FF, $FF
	db EKANS, 12, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db RATICATE, 16, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Cerulean City
; Trainer 1
	db MACHOP, 17, $FF, $FF, $FF, $FF
	db DROWZEE, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 24
; Trainer 1
	db EKANS, 15, $FF, $FF, $FF, $FF
	db ZUBAT, 15, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Game Corner
; Trainer 1
	db RATICATE, 20, $FF, $FF, $FF, $FF
	db ZUBAT, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rocket Hideout B1F
; Trainer 1
	db DROWZEE, 21, $FF, $FF, $FF, $FF
	db MACHOP, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db RATICATE, 21, $FF, $FF, $FF, $FF
	db RATICATE, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GRIMER, 20, $FF, $FF, $FF, $FF
	db KOFFING, 20, $FF, $FF, $FF, $FF
	db KOFFING, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 4
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db RATICATE, 19, $FF, $FF, $FF, $FF
	db RATICATE, 19, $FF, $FF, $FF, $FF
	db RATTATA, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 5
	db GRIMER, 22, $FF, $FF, $FF, $FF
	db KOFFING, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rocket Hideout B2F
; Trainer 1
	db ZUBAT, 17, $FF, $FF, $FF, $FF
	db KOFFING, 17, $FF, $FF, $FF, $FF
	db GRIMER, 17, $FF, $FF, $FF, $FF
	db ZUBAT, 17, $FF, $FF, $FF, $FF
	db RATICATE, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rocket Hideout B3F
; Trainer 1
	db RATTATA, 20, $FF, $FF, $FF, $FF
	db RATICATE, 20, $FF, $FF, $FF, $FF
	db DROWZEE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db MACHOP, 21, $FF, $FF, $FF, $FF
	db MACHOP, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Rocket Hideout B4F
; Trainer 1
	db SANDSHREW, 23, $FF, $FF, $FF, $FF
	db EKANS, 23, $FF, $FF, $FF, $FF
	db SANDSLASH, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db EKANS, 23, $FF, $FF, $FF, $FF
	db SANDSHREW, 23, $FF, $FF, $FF, $FF
	db ARBOK, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db KOFFING, 21, $FF, $FF, $FF, $FF
	db ZUBAT, 21, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 7F
; Trainer 1
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db GOLBAT, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db DROWZEE, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db ZUBAT, 23, $FF, $FF, $FF, $FF
	db RATTATA, 23, $FF, $FF, $FF, $FF
	db RATICATE, 23, $FF, $FF, $FF, $FF
	db ZUBAT, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db DROWZEE, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 2F
; Trainer 1
	db CUBONE, 29, $FF, $FF, $FF, $FF
	db ZUBAT, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GOLBAT, 25, $FF, $FF, $FF, $FF
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db RATICATE, 25, $FF, $FF, $FF, $FF
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 3F
; Trainer 1
	db RATICATE, 28, $FF, $FF, $FF, $FF
	db HYPNO, 28, $FF, $FF, $FF, $FF
	db RATICATE, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 4F
; Trainer 1
	db MACHOP, 29, $FF, $FF, $FF, $FF
	db DROWZEE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db EKANS, 28, $FF, $FF, $FF, $FF
	db ZUBAT, 28, $FF, $FF, $FF, $FF
	db CUBONE, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 5F
; Trainer 1
	db ARBOK, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db HYPNO, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 6F
; Trainer 1
	db MACHOP, 29, $FF, $FF, $FF, $FF
	db MACHOKE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db ZUBAT, 28, $FF, $FF, $FF, $FF
	db ZUBAT, 28, $FF, $FF, $FF, $FF
	db GOLBAT, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 7F
; Trainer 1
	db RATICATE, 26, $FF, $FF, $FF, $FF
	db ARBOK, 26, $FF, $FF, $FF, $FF
	db KOFFING, 26, $FF, $FF, $FF, $FF
	db GOLBAT, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CUBONE, 29, $FF, $FF, $FF, $FF
	db CUBONE, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db SANDSHREW, 29, $FF, $FF, $FF, $FF
	db SANDSLASH, 29, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 8F
; Trainer 1
	db RATICATE, 26, $FF, $FF, $FF, $FF
	db ZUBAT, 26, $FF, $FF, $FF, $FF
	db GOLBAT, 26, $FF, $FF, $FF, $FF
	db RATTATA, 26, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db WEEZING, 28, $FF, $FF, $FF, $FF
	db GOLBAT, 28, $FF, $FF, $FF, $FF
	db KOFFING, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 9F
; Trainer 1
	db DROWZEE, 28, $FF, $FF, $FF, $FF
	db GRIMER, 28, $FF, $FF, $FF, $FF
	db MACHOP, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GOLBAT, 28, $FF, $FF, $FF, $FF
	db DROWZEE, 28, $FF, $FF, $FF, $FF
	db HYPNO, 28, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 10F
; Trainer 1
	db MACHOKE, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 11F
; Trainer 1
	db RATTATA, 25, $FF, $FF, $FF, $FF
	db RATTATA, 25, $FF, $FF, $FF, $FF
	db ZUBAT, 25, $FF, $FF, $FF, $FF
	db RATTATA, 25, $FF, $FF, $FF, $FF
	db EKANS, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db CUBONE, 32, $FF, $FF, $FF, $FF
	db DROWZEE, 32, $FF, $FF, $FF, $FF
	db MAROWAK, 32, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


CooltrainerMData:
; Viridian Gym
; Trainer 1
	db NIDORINO, 39, $FF, $FF, $FF, $FF
	db NIDOKING, 39, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 3F
; Trainer 1
	db EXEGGUTOR, 43, $FF, $FF, $FF, $FF
	db CLOYSTER, 43, $FF, $FF, $FF, $FF
	db ARCANINE, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db KINGLER, 43, $FF, $FF, $FF, $FF
	db TENTACRUEL, 43, $FF, $FF, $FF, $FF
	db BLASTOISE, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db KINGLER, 45, $FF, $FF, $FF, $FF
	db STARMIE, 45, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 1F
; Trainer 1
	db IVYSAUR, 42, $FF, $FF, $FF, $FF
	db WARTORTLE, 42, $FF, $FF, $FF, $FF
	db CHARMELEON, 42, $FF, $FF, $FF, $FF
	db CHARIZARD, 42, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db IVYSAUR, 44, $FF, $FF, $FF, $FF
	db WARTORTLE, 44, $FF, $FF, $FF, $FF
	db CHARMELEON, 44, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db NIDOKING, 49, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db KINGLER, 44, $FF, $FF, $FF, $FF
	db CLOYSTER, 44, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Viridian Gym
; Trainer 1
	db SANDSLASH, 39, $FF, $FF, $FF, $FF
	db DUGTRIO, 39, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db RHYHORN, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


CooltrainerFData:
; Celadon Gym
; Trainer 1
	db WEEPINBELL, 24, $FF, $FF, $FF, $FF
	db GLOOM, 24, $FF, $FF, $FF, $FF
	db IVYSAUR, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 3F
; Trainer 1
	db BELLSPROUT, 43, $FF, $FF, $FF, $FF
	db WEEPINBELL, 43, $FF, $FF, $FF, $FF
	db VICTREEBEL, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PARASECT, 43, $FF, $FF, $FF, $FF
	db DEWGONG, 43, $FF, $FF, $FF, $FF
	db CHANSEY, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db VILEPLUME, 46, $FF, $FF, $FF, $FF
	db BUTTERFREE, 46, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Victory Road 1F
; Trainer 1
	db PERSIAN, 44, $FF, $FF, $FF, $FF
	db NINETALES, 44, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db IVYSAUR, 45, $FF, $FF, $FF, $FF
	db VENUSAUR, 45, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db NIDORINA, 45, $FF, $FF, $FF, $FF
	db NIDOQUEEN, 45, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db PERSIAN, 43, $FF, $FF, $FF, $FF
	db NINETALES, 43, $FF, $FF, $FF, $FF
	db RAICHU, 43, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BrunoData:
; Trainer 1
;	db ONIX, 53, $FF, $FF, $FF, $FF
;	db HITMONCHAN, 55, $FF, $FF, $FF, $FF
;	db HITMONLEE, 55, $FF, $FF, $FF, $FF
;	db ONIX, 56, $FF, $FF, $FF, $FF
;	db MACHAMP, 58, $FF, $FF, FISSURE, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Steve from PTCG
	db ELECTABUZZ, 35, QUICK_ATTACK, LEER, THUNDERSHOCK, 0
	db ELECTRODE, 35, TACKLE, SONICBOOM, SELFDESTRUCT, LIGHT_SCREEN
	db JOLTEON, 29, TACKLE, SAND_ATTACK, QUICK_ATTACK, THUNDERSHOCK
	db ZAPDOS, 68, THUNDERSHOCK, DRILL_PECK, THUNDER, LIGHT_SCREEN
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

BrockData:
; Trainer 1
;	db GEODUDE, 12, $FF, $FF, $FF, $FF
;	db ONIX, 14, $FF, $FF, BIDE, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Gene from PTCG
	db ONIX, 12, TACKLE, SCREECH, 0, 0
	db RHYHORN, 18, HORN_ATTACK, 0, 0, 0
	db GOLEM, 36, TACKLE, ROCK_THROW, SELFDESTRUCT, EARTHQUAKE
	db DUGTRIO, 36, GROWL, DIG, SAND_ATTACK, SLASH
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


MistyData:
; Trainer 1
;	db STARYU, 18, $FF, $FF, $FF, $FF
;	db STARMIE, 21, $FF, $FF, BUBBLEBEAM, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Amy from PTCG
	db SEADRA, 23, BUBBLE, SMOKESCREEN, 0, 0
	db SEAKING, 28, PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db LAPRAS, 31, WATER_GUN, SING, BODY_SLAM, CONFUSE_RAY
	db BLASTOISE, 52, BITE, WITHDRAW, SKULL_BASH, HYDRO_PUMP
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


LtSurgeData:
; Trainer 1
;	db VOLTORB, 21, $FF, $FF, $FF, $FF
;	db PIKACHU, 18, $FF, $FF, $FF, $FF
;	db RAICHU, 24, $FF, $FF, THUNDERBOLT, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Isaac from PTCG
	db MAGNETON, 28, TACKLE, SONICBOOM, THUNDERSHOCK, 0
	db ELECTRODE, 35, TACKLE, SONICBOOM, SELFDESTRUCT, LIGHT_SCREEN
	db ELECTABUZZ, 35, QUICK_ATTACK, LEER, THUNDERSHOCK, 0
	db TAUROS, 32, TACKLE, STOMP, TAIL_WHIP, 0
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db 0, 0, $FF, $FF, $FF, $FF


ErikaData:
; Trainer 1
;	db VICTREEBEL, 29, $FF, $FF, $FF, $FF
;	db TANGELA, 24, $FF, $FF, $FF, $FF
;	db VILEPLUME, 29, $FF, $FF, MEGA_DRAIN, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Nikki from PTCG
	db VILEPLUME, 35, STUN_SPORE, SLEEP_POWDER, ACID, PETAL_DANCE
	db EXEGGUTOR, 35, BARRAGE, HYPNOSIS, REFLECT, STOMP
	db VENUSAUR, 67, LEECH_SEED, RAZOR_LEAF, SLEEP_POWDER, SOLARBEAM
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


KogaData:
; Trainer 1
;	db KOFFING, 37, $FF, $FF, $FF, $FF
;	db MUK, 39, $FF, $FF, $FF, $FF
;	db KOFFING, 37, $FF, $FF, $FF, $FF
;	db WEEZING, 43, $FF, $FF, TOXIC, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Rick from PTCG
	db PORYGON, 12, TACKLE, SHARPEN, CONVERSION, 0
	db WEEZING, 27, TACKLE, SMOG, 0, 0
	db MUK, 34, POUND, DISABLE, POISON_GAS, MINIMIZE
	db MEWTWO, 60, CONFUSION, DISABLE, SWIFT, PSYCHIC_M
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


BlaineData:
; Trainer 1
;	db GROWLITHE, 42, $FF, $FF, $FF, $FF
;	db PONYTA, 40, $FF, $FF, $FF, $FF
;	db RAPIDASH, 42, $FF, $FF, $FF, $FF
;	db ARCANINE, 47, $FF, $FF, FIRE_BLAST, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Ken from PTCG
	db MAGMAR, 24, EMBER, 0, 0, 0
	db ARCANINE, 45, EMBER, BITE, TAKE_DOWN, AGILITY
	db CHANSEY, 55, SING, MINIMIZE, LIGHT_SCREEN, DOUBLE_EDGE
	db TAUROS, 32, TACKLE, STOMP, TAIL_WHIP, 0
	db WIGGLYTUFF, 36, SING, DISABLE, REST, BODY_SLAM
	db 0, 0, $FF, $FF, $FF, $FF


SabrinaData:
; Trainer 1
;	db KADABRA, 38, $FF, $FF, $FF, $FF
;	db MR_MIME, 37, $FF, $FF, $FF, $FF
;	db VENOMOTH, 38, $FF, $FF, $FF, $FF
;	db ALAKAZAM, 43, $FF, $FF, PSYWAVE, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Murray from PTCG
	db MR_MIME, 28, CONFUSION, BARRIER, LIGHT_SCREEN, 0
	db ALAKAZAM, 42, DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db SNORLAX, 20, HEADBUTT, AMNESIA, REST, 0
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db CHANSEY, 55, SING, MINIMIZE, LIGHT_SCREEN, DOUBLE_EDGE
	db 0, 0, $FF, $FF, $FF, $FF


GentlemanData:
; SS Anne 1F Rooms
; Trainer 1
	db GROWLITHE, 18, $FF, $FF, $FF, $FF
	db GROWLITHE, 18, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db NIDORAN_M, 19, $FF, $FF, $FF, $FF
	db NIDORAN_F, 19, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; SS Anne 2F Rooms
; Trainer 1
	db PIKACHU, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db PRIMEAPE, 48, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GROWLITHE, 17, $FF, $FF, $FF, $FF
	db PONYTA, 17, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Vermilion Gym
; Trainer 1
	db PIKACHU, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


Green2Data:
; SS Anne 2F
; Trainer 1
	db PIDGEOTTO, 19, $FF, $FF, $FF, $FF
	db RATICATE, 16, $FF, $FF, $FF, $FF
	db KADABRA, 18, $FF, $FF, $FF, $FF
	db WARTORTLE, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEOTTO, 19, $FF, $FF, $FF, $FF
	db RATICATE, 16, $FF, $FF, $FF, $FF
	db KADABRA, 18, $FF, $FF, $FF, $FF
	db IVYSAUR, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOTTO, 19, $FF, $FF, $FF, $FF
	db RATICATE, 16, $FF, $FF, $FF, $FF
	db KADABRA, 18, $FF, $FF, $FF, $FF
	db CHARMELEON, 20, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 2F
; Trainer 1
	db PIDGEOTTO, 25, $FF, $FF, $FF, $FF
	db GROWLITHE, 23, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 22, $FF, $FF, $FF, $FF
	db KADABRA, 20, $FF, $FF, $FF, $FF
	db WARTORTLE, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEOTTO, 25, $FF, $FF, $FF, $FF
	db GYARADOS, 23, $FF, $FF, $FF, $FF
	db GROWLITHE, 22, $FF, $FF, $FF, $FF
	db KADABRA, 20, $FF, $FF, $FF, $FF
	db IVYSAUR, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOTTO, 25, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 23, $FF, $FF, $FF, $FF
	db GYARADOS, 22, $FF, $FF, $FF, $FF
	db KADABRA, 20, $FF, $FF, $FF, $FF
	db CHARMELEON, 25, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Silph Co. 7F
; Trainer 1
	db PIDGEOT, 37, $FF, $FF, $FF, $FF
	db GROWLITHE, 38, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 35, $FF, $FF, $FF, $FF
	db ALAKAZAM, 35, $FF, $FF, $FF, $FF
	db BLASTOISE, 40, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEOT, 37, $FF, $FF, $FF, $FF
	db GYARADOS, 38, $FF, $FF, $FF, $FF
	db GROWLITHE, 35, $FF, $FF, $FF, $FF
	db ALAKAZAM, 35, $FF, $FF, $FF, $FF
	db VENUSAUR, 40, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOT, 37, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 38, $FF, $FF, $FF, $FF
	db GYARADOS, 35, $FF, $FF, $FF, $FF
	db ALAKAZAM, 35, $FF, $FF, $FF, $FF
	db CHARIZARD, 40, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Route 22
; Trainer 1
	db PIDGEOT, 47, $FF, $FF, $FF, $FF
	db RHYHORN, 45, $FF, $FF, $FF, $FF
	db GROWLITHE, 45, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 47, $FF, $FF, $FF, $FF
	db ALAKAZAM, 50, $FF, $FF, $FF, $FF
	db BLASTOISE, 53, $FF, $FF, $FF, $FF

; Trainer 2
	db PIDGEOT, 47, $FF, $FF, $FF, $FF
	db RHYHORN, 45, $FF, $FF, $FF, $FF
	db GYARADOS, 45, $FF, $FF, $FF, $FF
	db GROWLITHE, 47, $FF, $FF, $FF, $FF
	db ALAKAZAM, 50, $FF, $FF, $FF, $FF
	db VENUSAUR, 53, $FF, $FF, $FF, $FF

; Trainer 3
	db PIDGEOT, 47, $FF, $FF, $FF, $FF
	db RHYHORN, 45, $FF, $FF, $FF, $FF
	db EXEGGCUTE, 45, $FF, $FF, $FF, $FF
	db GYARADOS, 47, $FF, $FF, $FF, $FF
	db ALAKAZAM, 50, $FF, $FF, $FF, $FF
	db CHARIZARD, 53, $FF, $FF, $FF, $FF


Green3Data:
; Trainer 1
;	db PIDGEOT, 61, $FF, $FF, SKY_ATTACK, $FF
;	db ALAKAZAM, 59, $FF, $FF, $FF, $FF
;	db RHYDON, 61, $FF, $FF, $FF, $FF
;	db ARCANINE, 61, $FF, $FF, $FF, $FF
;	db EXEGGUTOR, 63, $FF, $FF, $FF, $FF
;	db BLASTOISE, 65, $FF, $FF, BLIZZARD, $FF
; Ronald from PTCG
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db VAPOREON, 29, TACKLE, SAND_ATTACK, QUICK_ATTACK, WATER_GUN
	db ARTICUNO, 37, PECK, ICE_BEAM, 0, 0
	db ZAPDOS, 68, THUNDERSHOCK, DRILL_PECK, THUNDER, LIGHT_SCREEN
	db MOLTRES, 37, PECK, FIRE_SPIN, 0, 0
	db DRAGONITE, 41, WRAP, THUNDER_WAVE, SLAM, DRAGON_RAGE

; Trainer 2
;	db PIDGEOT, 61, $FF, $FF, SKY_ATTACK, $FF
;	db ALAKAZAM, 59, $FF, $FF, $FF, $FF
;	db RHYDON, 61, $FF, $FF, $FF, $FF
;	db GYARADOS, 61, $FF, $FF, $FF, $FF
;	db ARCANINE, 63, $FF, $FF, $FF, $FF
;	db VENUSAUR, 65, $FF, $FF, MEGA_DRAIN, $FF
; Ronald from PTCG
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db JOLTEON, 24, TACKLE, SAND_ATTACK, QUICK_ATTACK, THUNDERSHOCK
	db ARTICUNO, 37, PECK, ICE_BEAM, 0, 0
	db ZAPDOS, 68, THUNDERSHOCK, DRILL_PECK, THUNDER, LIGHT_SCREEN
	db MOLTRES, 37, PECK, FIRE_SPIN, 0, 0
	db DRAGONITE, 41, WRAP, THUNDER_WAVE, SLAM, DRAGON_RAGE

; Trainer 3
;	db PIDGEOT, 61, $FF, $FF, SKY_ATTACK, $FF
;	db ALAKAZAM, 59, $FF, $FF, $FF, $FF
;	db RHYDON, 61, $FF, $FF, $FF, $FF
;	db EXEGGUTOR, 61, $FF, $FF, $FF, $FF
;	db GYARADOS, 63, $FF, $FF, $FF, $FF
;	db CHARIZARD, 65, $FF, $FF, FIRE_BLAST, $FF
; Ronald from PTCG
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db FLAREON, 22, TACKLE, SAND_ATTACK, QUICK_ATTACK, EMBER
	db ARTICUNO, 37, PECK, ICE_BEAM, 0, 0
	db ZAPDOS, 68, THUNDERSHOCK, DRILL_PECK, THUNDER, LIGHT_SCREEN
	db MOLTRES, 37, PECK, FIRE_SPIN, 0, 0
	db DRAGONITE, 41, WRAP, THUNDER_WAVE, SLAM, DRAGON_RAGE


LoreleiData:
; Trainer 1
;	db DEWGONG, 54, $FF, $FF, $FF, $FF
;	db CLOYSTER, 53, $FF, $FF, $FF, $FF
;	db SLOWBRO, 54, $FF, $FF, $FF, $FF
;	db JYNX, 56, $FF, $FF, $FF, $FF
;	db LAPRAS, 56, $FF, $FF, BLIZZARD, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Courtney from PTCG
	db MAGMAR, 24, EMBER, 0, 0, 0
	db ARCANINE, 45, EMBER, BITE, TAKE_DOWN, AGILITY
	db NINETALES, 35, TAIL_WHIP, QUICK_ATTACK, CONFUSE_RAY, FLAMETHROWER
	db MOLTRES, 37, PECK, FIRE_SPIN, 0, 0
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

ChannelerData:
; Unused
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 23, $FF, $FF, $FF, $FF
	db GASTLY, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 3F
; Trainer 1
	db GASTLY, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db HAUNTER, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 3F
; Trainer 1
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 4F
; Trainer 1
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GASTLY, 23, $FF, $FF, $FF, $FF
	db GASTLY, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 4F
; Trainer 1
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 5F
; Trainer 1
	db HAUNTER, 23, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Unused
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 5F
; Trainer 1
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db HAUNTER, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Pokémon Tower 6F
; Trainer 1
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db GASTLY, 22, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GASTLY, 24, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Saffron Gym
; Trainer 1
	db GASTLY, 34, $FF, $FF, $FF, $FF
	db HAUNTER, 34, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 2
	db HAUNTER, 38, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF

; Trainer 3
	db GASTLY, 33, $FF, $FF, $FF, $FF
	db GASTLY, 33, $FF, $FF, $FF, $FF
	db HAUNTER, 33, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF
	db 0, 0, $FF, $FF, $FF, $FF


AgathaData:
; Trainer 1
;	db GENGAR, 56, $FF, $FF, $FF, $FF
;	db GOLBAT, 56, $FF, $FF, $FF, $FF
;	db HAUNTER, 55, $FF, $FF, $FF, $FF
;	db ARBOK, 58, $FF, $FF, $FF, $FF
;	db GENGAR, 60, $FF, $FF, TOXIC, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Jack from PTCG
	db LAPRAS, 31, WATER_GUN, SING, BODY_SLAM, CONFUSE_RAY
	db ARTICUNO, 37, PECK, ICE_BEAM, 0, 0
	db DEWGONG, 42, HEADBUTT, GROWL, AURORA_BEAM, REST
	db CHANSEY, 55, SING, MINIMIZE, LIGHT_SCREEN, DOUBLE_EDGE
	db DITTO, 19, TRANSFORM, 0, 0, 0
	db 0, 0, $FF, $FF, $FF, $FF


LanceData:
; Trainer 1
;	db GYARADOS, 58, $FF, $FF, $FF, $FF
;	db DRAGONAIR, 56, $FF, $FF, $FF, $FF
;	db DRAGONAIR, 56, $FF, $FF, $FF, $FF
;	db AERODACTYL, 60, $FF, $FF, $FF, $FF
;	db DRAGONITE, 62, $FF, $FF, BARRIER, $FF
;	db 0, 0, $FF, $FF, $FF, $FF
; Rod from PTCG
	db LAPRAS, 31, WATER_GUN, SING, BODY_SLAM, CONFUSE_RAY
	db KANGASKHAN, 40, COMET_PUNCH, BITE, TAIL_WHIP, MEGA_PUNCH
	db GYARADOS, 41, TACKLE, BITE, DRAGON_RAGE, HYDRO_PUMP
	db DRAGONITE, 41, WRAP, THUNDER_WAVE, SLAM, DRAGON_RAGE
	db CHARIZARD, 76, LEER, SLASH, FLAMETHROWER, FIRE_SPIN
	db 0, 0, $FF, $FF, $FF, $FF

TrainerPartiesEnd: