extends KinematicBody2D

# Move to settings
const BLOCK_DIST = 110
var WIDTH
var HEIGHT

func _ready():
	# Use settings constant
	WIDTH = OS.get_window_size().x
	HEIGHT = OS.get_window_size().y

func _physics_process(delta):
	
	if Input.is_action_just_pressed("right") && (self.position.x + BLOCK_DIST) < WIDTH:
		self.position.x += BLOCK_DIST

	if Input.is_action_just_pressed("left") && (self.position.x - BLOCK_DIST) > 0:
		self.position.x -= BLOCK_DIST
