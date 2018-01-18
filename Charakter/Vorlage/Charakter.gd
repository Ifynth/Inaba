extends Node2D

export (String) var name = ""
var max_level = 20
export (int) var max_leben = 5
export (int) var max_angriff = 1
export (int) var max_verteidigung = 0

export (int) var akt_level = 1
var akt_leben
var akt_angriff
var akt_verteidigung

enum buff {ATK, DEF}

func _init():
	reset_stats()

func level_up():
	if akt_level != max_level:
		akt_level += 1
	else:
		print("Max Level erreicht")

func reset_stats():
	akt_leben = max_leben
	akt_angriff = max_angriff
	akt_verteidigung = max_verteidigung
