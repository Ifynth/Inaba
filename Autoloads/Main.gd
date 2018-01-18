extends Node

var chars

func _ready():
	var chars_packed = load("res://Charakter/Charaktere.tscn")
	chars = chars_packed.instance()
	print(chars.get_name())
