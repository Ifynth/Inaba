extends Node2D

func _ready():
	print("Start Fight!")
	# startFight(get_node("Valor"), get_node("Charlie"))

func _input(event):
	# Soll Zurzeit Testweise ausgeführt werden wenn der Kampf zuende ist
	if event.is_action_pressed("ui_accept"):
		#wechsle szene
		print("Szene Soll gewechselt werden")

func startFight(att, def):
	# Main
	# 
	
	print("Aktueller Stand: ")
	print("     Angreifer Leben: " + String(att.akt_leben))
	print("     Verteidiger Leben: " + String(def.akt_leben))
	
	print("Fight!")
	
	print("Angreifer greift an!")
	
	handleAttack(att, def)
	
	print("Aktueller Stand: ")
	print("     Angreifer Leben: " + String(att.akt_leben))
	print("     Verteidiger Leben: " + String(def.akt_leben))
	
	
	print("Ende des Kampfes")
	# TODO wechsle Szene mit Ergebnis mitliefern
	print("Bitte Drücke 'Enter' um Fortzufahren")
	set_process_input(true)
	

func handleAttack(att, def):
	# TODO (neuer Name überlegen)
	#########################################################
	# Schaut nach ob der Angriff trifft,
	# falls getroffen wird, soll die dementsprechende 
	# Animation abgespielt werden
	#########################################################
	
	if def.akt_verteidigung < att.akt_angriff:
		print("Angreifer greift an und hittet den verteidiger")
		def.akt_leben = def.akt_leben - (att.akt_angriff - def.akt_verteidigung)
	else:
		print("Verteidiger hat zu viel Rüstung -> 0 dmg")
