DEF MAPGROUP_N_A  EQU -1
DEF GROUP_N_A     EQU -1
DEF MAP_N_A       EQU -1
DEF MAPGROUP_NONE EQU 0
DEF GROUP_NONE    EQU 0
DEF MAP_NONE      EQU 0

; map struct members (see data/maps/maps.asm)
rsreset
DEF MAP_MAPATTRIBUTES_BANK rb ; 0
DEF MAP_TILESET            rb ; 1
DEF MAP_ENVIRONMENT        rb ; 2
DEF MAP_MAPATTRIBUTES      rw ; 3
DEF MAP_LOCATION           rb ; 5
DEF MAP_MUSIC              rb ; 6
DEF MAP_PALETTE            rb ; 7
DEF MAP_FISHGROUP          rb ; 8
DEF MAP_LENGTH EQU _RS

; map environments (wEnvironment)
; EnvironmentColorsPointers indexes (see data/maps/environment_colors.asm)
	const_def 1
	const TOWN
	const ROUTE
	const INDOOR
	const CAVE
	const ENVIRONMENT_5
	const GATE
	const DUNGEON
DEF NUM_ENVIRONMENTS EQU const_value - 1

; map palettes (wEnvironment)
	const_def
	const PALETTE_AUTO
	const PALETTE_DAY
	const PALETTE_NITE
	const PALETTE_MORN
	const PALETTE_DARK
DEF NUM_MAP_PALETTES EQU const_value

; FishGroups indexes (see data/wild/fish.asm)
	const_def
	const FISHGROUP_NONE
	const FISHGROUP_SHORE
	const FISHGROUP_OCEAN
	const FISHGROUP_LAKE
	const FISHGROUP_POND
	const FISHGROUP_DRATINI
	const FISHGROUP_QWILFISH_SWARM
	const FISHGROUP_REMORAID_SWARM
	const FISHGROUP_GYARADOS
	const FISHGROUP_DRATINI_2
	const FISHGROUP_WHIRL_ISLANDS
	const FISHGROUP_QWILFISH
	const FISHGROUP_REMORAID
	const FISHGROUP_QWILFISH_NO_SWARM
DEF NUM_FISHGROUPS EQU const_value - 1

; connection directions (see data/maps/data.asm)
	const_def
	const EAST_F
	const WEST_F
	const SOUTH_F
	const NORTH_F

; wMapConnections
	const_def
	shift_const EAST
	shift_const WEST
	shift_const SOUTH
	shift_const NORTH

; SpawnPoints indexes (see data/maps/spawn_points.asm)
	const_def
	const SPAWN_HOME			;0
	const SPAWN_DEBUG			;1
	const SPAWN_PALLET			;2
	const SPAWN_VIRIDIAN		;3
	const SPAWN_PEWTER			;4
	const SPAWN_CERULEAN		;5
	const SPAWN_ROCK_TUNNEL		;6
	const SPAWN_VERMILION		;7

	const SPAWN_LAVENDER		;8
	const SPAWN_SAFFRON			;9
	const SPAWN_CELADON			;10
	const SPAWN_FUCHSIA			;11
	const SPAWN_CINNABAR		;12
	const SPAWN_INDIGO			;13
	const SPAWN_NEW_BARK		;14
	const SPAWN_CHERRYGROVE		;15
	
	const SPAWN_VIOLET			;16
	const SPAWN_UNION_CAVE		;17
	const SPAWN_AZALEA			;18
	const SPAWN_CIANWOOD		;19
	const SPAWN_GOLDENROD		;20
	const SPAWN_OLIVINE			;21
	const SPAWN_ECRUTEAK		;22
	const SPAWN_MAHOGANY		;23
	const SPAWN_LAKE_OF_RAGE	;24
	const SPAWN_BLACKTHORN		;25
	const SPAWN_MT_SILVER		;26
	const SPAWN_FAST_SHIP		;27
DEF NUM_SPAWNS EQU const_value

DEF SPAWN_N_A EQU -1

; Flypoints indexes (see data/maps/flypoints.asm)
	const_def
; johto
DEF JOHTO_FLYPOINT EQU const_value
	const FLY_NEW_BARK
	const FLY_CHERRYGROVE
	const FLY_VIOLET
	const FLY_AZALEA
	const FLY_GOLDENROD
	const FLY_ECRUTEAK
	const FLY_OLIVINE
	const FLY_CIANWOOD
	const FLY_MAHOGANY
	const FLY_LAKE_OF_RAGE
	const FLY_BLACKTHORN
	const FLY_MT_SILVER
; kanto
DEF KANTO_FLYPOINT EQU const_value
	const FLY_PALLET
	const FLY_VIRIDIAN
	const FLY_PEWTER
	const FLY_CERULEAN
	const FLY_VERMILION
	const FLY_ROCK_TUNNEL
	const FLY_LAVENDER
	const FLY_CELADON
	const FLY_SAFFRON
	const FLY_FUCHSIA
	const FLY_CINNABAR
	const FLY_INDIGO
DEF NUM_FLYPOINTS EQU const_value

DEF MAX_OUTDOOR_SPRITES EQU 23 ; see engine/overworld/overworld.asm
