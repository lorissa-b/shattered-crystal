	object_const_def
	const ROUTE5_POKEFAN_M

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5PokefanMScript:
	jumptextfaceplayer Route5PokefanMText

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 11, BGEVENT_READ, HouseForSaleSign

	def_object_events
	object_event 17, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5PokefanMScript, EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
