extends TileMap

export (int) var width = 10
export (int) var height = 10

var cursor

func _ready():
	cursor = get_node("Cursor")
	set_process_input(true)

func _input(event):
	if event.is_action_pressed("ui_accept"):
		cursor.moveCursor(cursor.RIGHT)
