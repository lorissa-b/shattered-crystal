; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1, MapGroupRoofs
	db -1             ;  0
	db ROOF_OLIVINE   ;  1 (Olivine)
	db ROOF_AZALEA    ;  2 (Mahogany)
	db -1             ;  3 (Dungeons)
	db ROOF_VIOLET    ;  4 (Ecruteak)
	db ROOF_AZALEA    ;  5 (Blackthorn)
	db ROOF_AZALEA    ;  6 (Azalea)
	db ROOF_AZALEA    ;  7 (Lake of Rage)
	db ROOF_VIOLET    ;  8 (Violet)
	db ROOF_GOLDENROD ;  9 (Goldenrod)
	db -1             ; 10 (Indigo)
	db ROOF_NEW_BARK  ; 11 (Silver Cave)
	db -1             ; 12 (Cable Club)
	db ROOF_OLIVINE   ; 13 (Cianwood)
	db ROOF_NEW_BARK  ; 14 (New Bark)
	db ROOF_NEW_BARK  ; 15 (Cherrygrove)
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * LEN_2BPP_TILE, Roofs
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
