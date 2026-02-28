extends Sprite2D



var dir = 'right'
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dir == 'right':
		position.x += 100 * delta
	if dir == 'left':
		position.x -= 100 * delta
	if position.x >= 7000:
		dir = 'left'
	if position.x <= 6000:
		dir = 'right'
