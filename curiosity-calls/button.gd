extends Area2D
var block = preload("res://block.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$AnimatedSprite2D.play("on")
	var b = block.instantiate()
	get_parent().add_child(b)
	b.startpos(1500,3400)
