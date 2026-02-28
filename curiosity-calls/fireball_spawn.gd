extends Node2D
var cd = 0
var fire = preload("res://fireball.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cd += delta
	if cd > 3:
		var f = fire.instantiate()
		add_child(f)
		cd = 0
