extends Node

func _ready():
	pass
	# TODO get a spezific char (wahrscheinlich unnötig)
	#print(getChar("Xayah"))
	#print(getChar("Valor"))


func getChar(name):
	# gibt den Char Node zurück per Namen
	for node in get_children():
		if node.name == name:
			return node

