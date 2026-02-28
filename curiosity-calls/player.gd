extends CharacterBody2D


const SPEED = 900.0
const JUMP_VELOCITY = -450.0

var time = 0
var needs_release = false;

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("down"):
		$Camera2D.offset.y = 250
	if Input.is_action_just_pressed("left"):
		$Sprite2D.flip_h = true
		$Camera2D.offset.y = 0
	if Input.is_action_just_pressed("right"):
		$Sprite2D.flip_h = false
		$Camera2D.offset.y = 0
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump. before: velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("jump") and is_on_floor() and velocity.x == 0:
		velocity.y = JUMP_VELOCITY
		#print("space pressed noted.")
	#else:
		##if Input.is_action_just_pressed("jump") and is_on_floor() and (velocity.x == 0) == false::
		#if Input.is_action_just_pressed("jump") and is_on_floor() and velocity.x != 0:
			#velocity.y = JUMP_VELOCITY
		#if Input.is_action_just_released("jump") and needs_release:
			#print("the time recorded is ", time);
			#if time > 10:
				#time = 10
			#var new_val = pow(7, 3.14 + (time/5))
			#velocity.y = -new_val                            
			#time = 0
			#print("space released noted.")
		#else:
			#if needs_release:
				#time += delta
		
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
