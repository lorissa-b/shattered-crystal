MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_Olivine     ;  1
	dw MapGroup_Mahogany    ;  2
	dw MapGroup_Dungeons    ;  3
	dw MapGroup_Ecruteak    ;  4
	dw MapGroup_Blackthorn  ;  5
	dw MapGroup_Azalea      ;  6
	dw MapGroup_LakeOfRage  ;  7
	dw MapGroup_Violet      ;  8
	dw MapGroup_Goldenrod   ;  9
	dw MapGroup_Indigo      ; 10
	dw MapGroup_Silver      ; 11
	dw MapGroup_CableClub   ; 12
	dw MapGroup_Cianwood    ; 13
	dw MapGroup_NewBark     ; 14
	dw MapGroup_Cherrygrove ; 15
	assert_table_length NUM_MAP_GROUPS

MapGroup_Olivine:
	table_width MAP_LENGTH, MapGroup_Olivine
	map OlivinePokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineGym, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineTimsHouse, TILESET_HOUSE, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineHouseBeta, TILESET_HOUSE, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivinePunishmentSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineGoodRodHouse, TILESET_HOUSE, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineCafe, TILESET_GAME_CORNER, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineMart, TILESET_MART, INDOOR, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route38EcruteakGate, TILESET_GATE, GATE, LANDMARK_ROUTE_38, MUSIC_ROUTE_37, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route39Barn, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ROUTE_39, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route39Farmhouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_39, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route38, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_38, MUSIC_ROUTE_37, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route39, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_39, MUSIC_ROUTE_37, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map OlivineCity, TILESET_JOHTO, TOWN, LANDMARK_OLIVINE_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_OLIVINE_MAPS

MapGroup_Mahogany:
	table_width MAP_LENGTH, MapGroup_Mahogany
	map MahoganyRedGyaradosSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_MAHOGANY_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MahoganyGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_MAHOGANY_TOWN, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MahoganyPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_MAHOGANY_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route42EcruteakGate, TILESET_GATE, GATE, LANDMARK_ROUTE_42, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route42, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_42, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_LAKE
	map Route44, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_44, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map MahoganyTown, TILESET_JOHTO, TOWN, LANDMARK_MAHOGANY_TOWN, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_MAHOGANY_MAPS

MapGroup_Dungeons:
	table_width MAP_LENGTH, MapGroup_Dungeons
	map SproutTower1F, TILESET_TOWER, DUNGEON, LANDMARK_SPROUT_TOWER, MUSIC_SPROUT_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SproutTower2F, TILESET_TOWER, DUNGEON, LANDMARK_SPROUT_TOWER, MUSIC_SPROUT_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map SproutTower3F, TILESET_TOWER, DUNGEON, LANDMARK_SPROUT_TOWER, MUSIC_SPROUT_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower1F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower2F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower3F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower4F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower5F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower6F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower7F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower8F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TinTower9F, TILESET_TOWER, DUNGEON, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BurnedTower1F, TILESET_TOWER, DUNGEON, LANDMARK_BURNED_TOWER, MUSIC_BURNED_TOWER, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map BurnedTowerB1F, TILESET_CAVE, CAVE, LANDMARK_BURNED_TOWER, MUSIC_BURNED_TOWER, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map NationalPark, TILESET_PARK, ROUTE, LANDMARK_NATIONAL_PARK, MUSIC_NATIONAL_PARK, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NationalParkBugContest, TILESET_PARK, ROUTE, LANDMARK_NATIONAL_PARK, MUSIC_BUG_CATCHING_CONTEST, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map RadioTower1F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_RADIO_TOWER, RADIO_TOWER_MUSIC | MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RadioTower2F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_RADIO_TOWER, RADIO_TOWER_MUSIC | MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RadioTower3F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_RADIO_TOWER, RADIO_TOWER_MUSIC | MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RadioTower4F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_RADIO_TOWER, RADIO_TOWER_MUSIC | MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RadioTower5F, TILESET_RADIO_TOWER, INDOOR, LANDMARK_RADIO_TOWER, RADIO_TOWER_MUSIC | MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphOutside, TILESET_JOHTO, ROUTE, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map RuinsOfAlphHoOhChamber, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphKabutoChamber, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphOmanyteChamber, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphAerodactylChamber, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphInnerChamber, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_RUINS_OF_ALPH_INTERIOR, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphResearchCenter, TILESET_FACILITY, INDOOR, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphHoOhItemRoom, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphKabutoItemRoom, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphOmanyteItemRoom, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphAerodactylItemRoom, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphHoOhWordRoom, TILESET_HO_OH_WORD_ROOM, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphKabutoWordRoom, TILESET_KABUTO_WORD_ROOM, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphOmanyteWordRoom, TILESET_OMANYTE_WORD_ROOM, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map RuinsOfAlphAerodactylWordRoom, TILESET_AERODACTYL_WORD_ROOM, DUNGEON, LANDMARK_RUINS_OF_ALPH, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map UnionCave1F, TILESET_CAVE, CAVE, LANDMARK_UNION_CAVE, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map UnionCaveB1F, TILESET_CAVE, CAVE, LANDMARK_UNION_CAVE, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map UnionCaveB2F, TILESET_CAVE, CAVE, LANDMARK_UNION_CAVE, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map SlowpokeWellB1F, TILESET_CAVE, CAVE, LANDMARK_SLOWPOKE_WELL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map SlowpokeWellB2F, TILESET_CAVE, CAVE, LANDMARK_SLOWPOKE_WELL, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map OlivineLighthouse1F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_LIGHTHOUSE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineLighthouse2F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_LIGHTHOUSE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineLighthouse3F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_LIGHTHOUSE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineLighthouse4F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_LIGHTHOUSE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineLighthouse5F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_LIGHTHOUSE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OlivineLighthouse6F, TILESET_LIGHTHOUSE, DUNGEON, LANDMARK_LIGHTHOUSE, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MahoganyMart1F, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_MAHOGANY_TOWN, MUSIC_MAHOGANY_MART, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TeamRocketBaseB1F, TILESET_UNDERGROUND, DUNGEON, LANDMARK_MAHOGANY_TOWN, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TeamRocketBaseB2F, TILESET_FACILITY, DUNGEON, LANDMARK_MAHOGANY_TOWN, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TeamRocketBaseB3F, TILESET_FACILITY, DUNGEON, LANDMARK_MAHOGANY_TOWN, MUSIC_ROCKET_HIDEOUT, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map IlexForest, TILESET_FOREST, CAVE, LANDMARK_ILEX_FOREST, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_POND
	map GoldenrodUnderground, TILESET_GATE, DUNGEON, LANDMARK_GOLDENROD_CITY, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodUndergroundSwitchRoomEntrances, TILESET_ELITE_FOUR_ROOM, DUNGEON, LANDMARK_GOLDENROD_CITY, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStoreB1F, TILESET_UNDERGROUND, DUNGEON, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodUndergroundWarehouse, TILESET_UNDERGROUND, DUNGEON, LANDMARK_GOLDENROD_CITY, MUSIC_UNION_CAVE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MountMortar1FOutside, TILESET_DARK_CAVE, CAVE, LANDMARK_MT_MORTAR, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map MountMortar1FInside, TILESET_DARK_CAVE, CAVE, LANDMARK_MT_MORTAR, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map MountMortar2FInside, TILESET_DARK_CAVE, CAVE, LANDMARK_MT_MORTAR, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map MountMortarB1F, TILESET_DARK_CAVE, CAVE, LANDMARK_MT_MORTAR, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map IcePath1F, TILESET_ICE_PATH, CAVE, LANDMARK_ICE_PATH, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map IcePathB1F, TILESET_ICE_PATH, CAVE, LANDMARK_ICE_PATH, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map IcePathB2FMahoganySide, TILESET_ICE_PATH, CAVE, LANDMARK_ICE_PATH, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map IcePathB2FBlackthornSide, TILESET_ICE_PATH, CAVE, LANDMARK_ICE_PATH, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map IcePathB3F, TILESET_ICE_PATH, CAVE, LANDMARK_ICE_PATH, MUSIC_DARK_CAVE, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map WhirlIslandNW, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandNE, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandSW, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandCave, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandSE, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandB1F, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandB2F, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map WhirlIslandLugiaChamber, TILESET_DARK_CAVE, CAVE, LANDMARK_WHIRL_ISLANDS, MUSIC_UNION_CAVE, TRUE, PALETTE_DARK, FISHGROUP_WHIRL_ISLANDS
	map SilverCaveRoom1, TILESET_DARK_CAVE, CAVE, LANDMARK_SILVER_CAVE, MUSIC_LIGHTHOUSE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	map SilverCaveRoom2, TILESET_CAVE, CAVE, LANDMARK_SILVER_CAVE, MUSIC_LIGHTHOUSE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map SilverCaveRoom3, TILESET_CAVE, CAVE, LANDMARK_SILVER_CAVE, MUSIC_LIGHTHOUSE, TRUE, PALETTE_DAY, FISHGROUP_LAKE
	map SilverCaveItemRooms, TILESET_CAVE, CAVE, LANDMARK_SILVER_CAVE, MUSIC_LIGHTHOUSE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map DarkCaveVioletEntrance, TILESET_DARK_CAVE, CAVE, LANDMARK_DARK_CAVE, MUSIC_DARK_CAVE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	map DarkCaveBlackthornEntrance, TILESET_DARK_CAVE, CAVE, LANDMARK_DARK_CAVE, MUSIC_DARK_CAVE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	map DragonsDen1F, TILESET_CAVE, CAVE, LANDMARK_DRAGONS_DEN, MUSIC_DRAGONS_DEN, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map DragonsDenB1F, TILESET_JOHTO, CAVE, LANDMARK_DRAGONS_DEN, MUSIC_DRAGONS_DEN, TRUE, PALETTE_NITE, FISHGROUP_DRATINI
	map DragonShrine, TILESET_LAB, INDOOR, LANDMARK_DRAGONS_DEN, MUSIC_DRAGONS_DEN, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map TohjoFalls, TILESET_CAVE, CAVE, LANDMARK_TOHJO_FALLS, MUSIC_UNION_CAVE, TRUE, PALETTE_NITE, FISHGROUP_LAKE
	map VictoryRoad, TILESET_CAVE, CAVE, LANDMARK_VICTORY_ROAD, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	assert_table_length NUM_DUNGEONS_MAPS

MapGroup_Ecruteak:
	table_width MAP_LENGTH, MapGroup_Ecruteak
	map EcruteakTinTowerEntrance, TILESET_TOWER, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WiseTriosRoom, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakLugiaSpeechHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DanceTheater, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_DANCING_HALL, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakMart, TILESET_MART, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakGym, TILESET_TOWER, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakItemfinderHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map EcruteakCity, TILESET_JOHTO, TOWN, LANDMARK_ECRUTEAK_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TinTowerRoof, TILESET_TOWER, ROUTE, LANDMARK_TIN_TOWER, MUSIC_TIN_TOWER, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_ECRUTEAK_MAPS

MapGroup_Blackthorn:
	table_width MAP_LENGTH, MapGroup_Blackthorn
	map BlackthornGym1F, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BlackthornGym2F, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BlackthornDragonSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BlackthornEmysHouse, TILESET_HOUSE, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BlackthornMart, TILESET_MART, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BlackthornPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MoveDeletersHouse, TILESET_HOUSE, INDOOR, LANDMARK_BLACKTHORN_CITY, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route45, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_45, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_DRATINI_2
	map Route46, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_46, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BlackthornCity, TILESET_JOHTO, TOWN, LANDMARK_BLACKTHORN_CITY, MUSIC_AZALEA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_BLACKTHORN_MAPS

MapGroup_Azalea:
	table_width MAP_LENGTH, MapGroup_Azalea
	map AzaleaPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_AZALEA_TOWN, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CharcoalKiln, TILESET_HOUSE, INDOOR, LANDMARK_AZALEA_TOWN, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AzaleaMart, TILESET_MART, INDOOR, LANDMARK_AZALEA_TOWN, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map KurtsHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_AZALEA_TOWN, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map AzaleaGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_AZALEA_TOWN, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Route33, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_33, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map AzaleaTown, TILESET_JOHTO_MODERN, TOWN, LANDMARK_AZALEA_TOWN, MUSIC_AZALEA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_AZALEA_MAPS

MapGroup_LakeOfRage:
	table_width MAP_LENGTH, MapGroup_LakeOfRage
	map LakeOfRageHiddenPowerHouse, TILESET_HOUSE, INDOOR, LANDMARK_LAKE_OF_RAGE, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map LakeOfRageMagikarpHouse, TILESET_HOUSE, INDOOR, LANDMARK_LAKE_OF_RAGE, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route43MahoganyGate, TILESET_GATE, GATE, LANDMARK_ROUTE_43, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route43Gate, TILESET_GATE, GATE, LANDMARK_ROUTE_43, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route43, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_43, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map LakeOfRage, TILESET_JOHTO, TOWN, LANDMARK_LAKE_OF_RAGE, MUSIC_LAKE_OF_RAGE, FALSE, PALETTE_AUTO, FISHGROUP_GYARADOS
	assert_table_length NUM_LAKE_OF_RAGE_MAPS

MapGroup_Violet:
	table_width MAP_LENGTH, MapGroup_Violet
	map Route32, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_32, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_QWILFISH
	map Route35, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_35, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route36, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_36, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route37, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_37, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map VioletCity, TILESET_JOHTO, TOWN, LANDMARK_VIOLET_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map VioletMart, TILESET_MART, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VioletGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map EarlsPokemonAcademy, TILESET_LAB, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VioletNicknameSpeechHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VioletPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map VioletKylesHouse, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route32RuinsOfAlphGate, TILESET_GATE, GATE, LANDMARK_ROUTE_32, MUSIC_ROUTE_30, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route32Pokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_32, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route35GoldenrodGate, TILESET_GATE, GATE, LANDMARK_ROUTE_35, MUSIC_ROUTE_36, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route35NationalParkGate, TILESET_GATE, INDOOR, LANDMARK_ROUTE_35, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route36RuinsOfAlphGate, TILESET_GATE, GATE, LANDMARK_ROUTE_36, MUSIC_ROUTE_36, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route36NationalParkGate, TILESET_GATE, INDOOR, LANDMARK_ROUTE_36, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_VIOLET_MAPS

MapGroup_Goldenrod:
	table_width MAP_LENGTH, MapGroup_Goldenrod
	map Route34, TILESET_JOHTO_MODERN, ROUTE, LANDMARK_ROUTE_34, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map GoldenrodCity, TILESET_JOHTO_MODERN, TOWN, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map GoldenrodGym, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodBikeShop, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodHappinessRater, TILESET_HOUSE, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BillsFamilysHouse, TILESET_HOUSE, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodMagnetTrainStation, TILESET_TRAIN_STATION, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodFlowerShop, TILESET_HOUSE, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodPPSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodNameRater, TILESET_HOUSE, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore1F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore2F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore3F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore4F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore5F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStore6F, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStoreElevator, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodDeptStoreRoof, TILESET_MART, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GOLDENROD_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodGameCorner, TILESET_GAME_CORNER, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_GAME_CORNER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GoldenrodPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PokecomCenterAdminOfficeMobile, TILESET_POKECOM_CENTER, INDOOR, LANDMARK_GOLDENROD_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map IlexForestAzaleaGate, TILESET_GATE, GATE, LANDMARK_ROUTE_34, MUSIC_ROUTE_36, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route34IlexForestGate, TILESET_GATE, GATE, LANDMARK_ROUTE_34, MUSIC_ROUTE_36, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DayCare, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_34, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_GOLDENROD_MAPS

MapGroup_Indigo:
	table_width MAP_LENGTH, MapGroup_Indigo
	map Route23, TILESET_KANTO, TOWN, LANDMARK_ROUTE_23, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map VictoryRoadGate, TILESET_GATE, GATE, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_INDIGO_MAPS

MapGroup_Silver:
	table_width MAP_LENGTH, MapGroup_Silver
	map Route28, TILESET_KANTO, ROUTE, LANDMARK_ROUTE_28, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map SilverCaveOutside, TILESET_KANTO, TOWN, LANDMARK_SILVER_CAVE, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map SilverCavePokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_SILVER_CAVE, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route28SteelWingHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_28, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_SILVER_MAPS

MapGroup_CableClub:
	table_width MAP_LENGTH, MapGroup_CableClub
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileTradeRoom, TILESET_MANSION, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map MobileBattleRoom, TILESET_MANSION, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CABLE_CLUB_MAPS

MapGroup_Cianwood:
	table_width MAP_LENGTH, MapGroup_Cianwood
	map Route40, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_40, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route41, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_41, MUSIC_ROUTE_36, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map CianwoodCity, TILESET_JOHTO, TOWN, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map ManiasHouse, TILESET_HOUSE, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CianwoodGym, TILESET_TOWER, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_GYM, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map CianwoodPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CianwoodPharmacy, TILESET_HOUSE, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CianwoodPhotoStudio, TILESET_HOUSE, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CianwoodLugiaSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PokeSeersHouse, TILESET_HOUSE, INDOOR, LANDMARK_CIANWOOD_CITY, MUSIC_ECRUTEAK_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Route40BattleTowerGate, TILESET_GATE, GATE, LANDMARK_BATTLE_TOWER, MUSIC_ROUTE_36, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	assert_table_length NUM_CIANWOOD_MAPS

MapGroup_NewBark:
	table_width MAP_LENGTH, MapGroup_NewBark
	map Route26, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_26, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Route27, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_27, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Route29, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_29, MUSIC_ROUTE_29, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map NewBarkTown, TILESET_JOHTO, TOWN, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map ElmsLab, TILESET_LAB, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_PROF_ELM, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersNeighborsHouse, TILESET_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ElmsHouse, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route26HealHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_26, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map DayOfWeekSiblingsHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_26, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route27SandstormHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_27, MUSIC_AZALEA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route29Route46Gate, TILESET_GATE, GATE, LANDMARK_ROUTE_29, MUSIC_ROUTE_29, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_NEW_BARK_MAPS

MapGroup_Cherrygrove:
	table_width MAP_LENGTH, MapGroup_Cherrygrove
	map Route30, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_30, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map Route31, TILESET_JOHTO, ROUTE, LANDMARK_ROUTE_31, MUSIC_ROUTE_30, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map CherrygroveCity, TILESET_JOHTO, TOWN, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map CherrygroveMart, TILESET_MART, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CherrygrovePokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CherrygroveGymSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GuideGentsHouse, TILESET_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CherrygroveEvolutionSpeechHouse, TILESET_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route30BerryHouse, TILESET_HOUSE, INDOOR, LANDMARK_ROUTE_30, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MrPokemonsHouse, TILESET_FACILITY, INDOOR, LANDMARK_ROUTE_30, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route31VioletGate, TILESET_GATE, GATE, LANDMARK_ROUTE_31, MUSIC_ROUTE_30, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CHERRYGROVE_MAPS
