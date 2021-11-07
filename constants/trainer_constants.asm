OPP_ID_OFFSET EQU 200

trainer_const: MACRO
\1     EQU const_value
OPP_\1 EQU const_value + OPP_ID_OFFSET
const_value = const_value + 1
ENDM

const_value = 1

	trainer_const YOUNGSTER     ; $01
	trainer_const BUG_CATCHER   ; $02
	trainer_const LASS          ; $03
	trainer_const SAILOR        ; $04
	trainer_const JR_TRAINER_M  ; $05
	trainer_const JR_TRAINER_F  ; $06
	trainer_const POKEMANIAC    ; $07
	trainer_const SUPER_NERD    ; $08
	trainer_const HIKER         ; $09
	trainer_const BIKER         ; $0A
	trainer_const BURGLAR       ; $0B
	trainer_const ENGINEER      ; $0C
	trainer_const JUGGLER_X     ; $0D
	trainer_const FISHER        ; $0E
	trainer_const SWIMMER       ; $0F
	trainer_const CUE_BALL      ; $10
	trainer_const GAMBLER       ; $11
	trainer_const BEAUTY        ; $12
	trainer_const PSYCHIC_TR    ; $13
	trainer_const ROCKER        ; $14
	trainer_const JUGGLER       ; $15
	trainer_const TAMER         ; $16
	trainer_const BIRD_KEEPER   ; $17
	trainer_const BLACKBELT     ; $18
	trainer_const SONY1         ; $19
	trainer_const PROF_OAK      ; $1A
	trainer_const CHIEF         ; $1B
	trainer_const SCIENTIST     ; $1C
	trainer_const GIOVANNI      ; $1D
	trainer_const ROCKET        ; $1E
	trainer_const COOLTRAINER_M ; $1F
	trainer_const COOLTRAINER_F ; $20
	trainer_const BRUNO         ; $21
	trainer_const BROCK         ; $22
	trainer_const MISTY         ; $23
	trainer_const LT_SURGE      ; $24
	trainer_const ERIKA         ; $25
	trainer_const KOGA          ; $26
	trainer_const BLAINE        ; $27
	trainer_const SABRINA       ; $28
	trainer_const GENTLEMAN     ; $29
	trainer_const SONY2         ; $2A
	trainer_const SONY3         ; $2B
	trainer_const LORELEI       ; $2C
	trainer_const CHANNELER     ; $2D
	trainer_const AGATHA        ; $2E
	trainer_const LANCE         ; $2F

; IDDJY constant for the total number of trainer classes
NUM_TRAINER_CLASSES EQU const_value + -1

; IDDJY constants for StatExp thresholds for the trainer class definitions
; STATEXP_FIVE means the trainer's mons will have +5 in every stat
; STATEXP_MAX means +64 in every stat
STATEXP_ZERO		EQU $0000
STATEXP_ONE			EQU $0010
STATEXP_TWO			EQU $0040
STATEXP_THREE		EQU $0090
STATEXP_FOUR		EQU $0100
STATEXP_FIVE		EQU $0200
STATEXP_SIX			EQU $0300
STATEXP_SEVEN		EQU $0310
STATEXP_EIGHT		EQU $0400
STATEXP_NINE		EQU $0600
STATEXP_TEN			EQU $0700
STATEXP_TWELVE		EQU $0900
STATEXP_FIFTEEN		EQU $0F00
STATEXP_TWENTY		EQU $1900
STATEXP_TWENTY_FIVE	EQU $2800
STATEXP_THIRTY		EQU $3900
STATEXP_THIRTY_FIVE	EQU $4D00
STATEXP_FORTY		EQU $6400
STATEXP_FORTY_FIVE	EQU $7F00
STATEXP_FIFTY		EQU $9D00
STATEXP_FIFTY_FIVE	EQU $BE00
STATEXP_SIXTY		EQU $E100
STATEXP_MAX			EQU $FFFF

; IDDJY constants for DVs for the trainer class definitions:
; since the HP DV is computed from the other DVs, you can't have nice equal values for all DVs (except with all zeros or all maxed)
; since these values are used with dw in the code but are stored as ds 2 in the party_struct, the high byte and low byte are swapped
DVS_MIN				EQU $0000	; 0/0/0/0/0
DVS_TERRIBLE		EQU $3222	; 2/2/3/2/2
DVS_VERY_LOW		EQU $4445	; 4/5/4/4/4
DVS_LOW				EQU $7667	; 6/7/7/6/6
DVS_AVERAGE			EQU $8898	; 9/8/8/8/8
DVS_GOOD			EQU $BABA	; 11/10/11/10/10
DVS_VERY_GOOD		EQU $CCDD	; 13/13/12/12/12
DVS_EXCELLENT		EQU $EEFF	; 15/15/14/14/12
DVS_MAX				EQU $FFFF	; 15/15/15/15/15
