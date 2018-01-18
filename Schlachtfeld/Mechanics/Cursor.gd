extends Sprite

export (Vector2) var StartPosition = Vector2(0,0)

# 1 Grid Feld ist zurzeit 64x64
var size = 64
onready var animation = get_node("AnimationPlayer")

enum {TOP, LEFT, RIGHT, BOTTOM}

func _ready():
	placeCursorOn(StartPosition)

func placeCursorOn(gridPos):
	# Platzier den Cursor genau auf die Grid Position
	set_pos(Vector2(gridPos.x * size, gridPos.y * size))

func moveCursor(direction):
	# Bewege den Cursor in eine Richtung
	animation.play("Default")
	if direction == TOP:
		return set_pos(Vector2(get_pos().x, get_pos().y - size))
	elif direction == LEFT:
		return set_pos(Vector2(get_pos().x - size, get_pos().y))
	elif direction == RIGHT:
		return set_pos(Vector2(get_pos().x + size, get_pos().y))
	elif direction == BOTTOM:
		return set_pos(Vector2(get_pos().x, get_pos().y + size))
	print("Falsche Richtungsangabe")