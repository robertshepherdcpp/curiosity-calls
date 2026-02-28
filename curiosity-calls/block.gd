extends RigidBody2D

var left = 0
var right = 0
var dir = 'left'
var start_pos = Vector2(0,0)
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dir == 'right':
		position.x += 100 * delta
		if position.x > start_pos.x + right:
			dir = 'left'
	if dir == 'left':
		position.x -= 100 * delta
		if position.x > start_pos.x + left:
			dir = 'right'
func movement(l,r):
	left = l
	right = r
func startpos(a,b):
	start_pos.x = a
	start_pos.y = b
