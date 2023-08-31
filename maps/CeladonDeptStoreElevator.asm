CeladonDeptStoreElevator_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStoreElevatorScript:
	opentext
	elevator CeladonDeptStoreElevatorData
	closetext
	iffalse .Done
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
.Done:
	end

CeladonDeptStoreElevatorData:
	db 6 ; floors
	db -1 ; end

CeladonDeptStoreElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStoreElevatorScript

	def_object_events
