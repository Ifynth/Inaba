extends Node

var fight_scene
var chars

func _ready():
	var fight_packed = load("res://Kampf/Kampf.tscn")
	fight_scene = fight_packed.instance()
	var chars_packed = load("res://Charakter/Charaktere.tscn")
	chars = chars_packed.instance()
	print(chars.get_name())
	print(chars.get_child(0).get_name() + " hat zurzeit " + String(chars.get_child(0).akt_leben) + " Leben")
	print(chars.getChar("Valor").get_name())
	print("---")
	#TODO Kann nicht Fortfahren...
	fight_scene.startFight(chars.getChar("Valor"), chars.getChar("Charlie"))