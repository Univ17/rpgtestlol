class_name Player extends CharacterBody2D

var move_speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direction : Vector2 = Vector2.ZERO
	direction.x = Input.get_action_strength("moveright") - Input.get_action_strength("moveleft")
	direction.y = Input.get_action_strength("movedown") - Input.get_action_strength("moveup")
	
	velocity = direction * move_speed
	
	pass

func _physics_process(delta):
	move_and_slide()
