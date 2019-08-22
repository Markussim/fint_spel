extends KinematicBody2D

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity = Vector2()
	if(Input.is_action_just_pressed("moveLeft")):
		velocity.x -= 100;
	if(Input.is_action_just_pressed("moveRight")):
		velocity.x += 100;
	if(Input.is_action_just_pressed("moveUp")):
		velocity.y -= 100;
	if(Input.is_action_just_pressed("moveDown")):
		velocity.y += 100;
	
	velocity = move_and_slide(velocity);