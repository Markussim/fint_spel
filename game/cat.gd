extends KinematicBody2D

var moveTo = Vector2()
var speed = 100;
export var speedMultiplier = 1.2;
var moving = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	
	if(!moving):
		if(Input.is_action_just_pressed("moveLeft")):
			moveStuff(-speed,0)
		if(Input.is_action_just_pressed("moveRight")):
			moveStuff(speed,0)
		if(Input.is_action_just_pressed("moveUp")):
			moveStuff(0,-speed)
		if(Input.is_action_just_pressed("moveDown")):
			moveStuff(0,speed)
	else:
		move_and_slide(moveTo)
		moving=false
		moveTo = Vector2()
	
func moveStuff(x,y):
	moveTo.x += x
	moveTo.y += y
	speed*=speedMultiplier
	moving = true;