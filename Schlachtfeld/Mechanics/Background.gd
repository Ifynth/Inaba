extends Sprite

var grid
var size
var width
var height
export var stroke = 2.0
export var color = Color("#FFFFFF")

func _ready():
	width = get_parent().width
	height = get_parent().height
	grid = get_parent()
	size = grid.get_cell_size().x if grid.get_cell_size().x == grid.get_cell_size().y else 0

func _draw():
	
	# Verticale Linien
	for x in range(width + 1):
		draw_line(Vector2(x*size,0), Vector2(x*size, height*size), color, stroke)
	
	# Horizontale Linien
	for y in range(height +1):
		draw_line(Vector2(0,y*size), Vector2(width*size, y*size), color, stroke)