	object_const_def
	const VERMILIONPORTPASSAGE_TEACHER

VermilionPortPassage_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPortPassageTeacherScript:
	jumptextfaceplayer VermilionPortPassageTeacherText

VermilionPortPassageTeacherText:
	text "The FAST SHIP"
	line "sails on Wednes-"
	cont "days and Sundays"
	cont "every week."
	done

VermilionPortPassage_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPortPassageTeacherScript, -1
