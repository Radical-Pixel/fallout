extends KinematicBody2D

# Move to settings
const BLOCK_DIST = 110

func _ready():
	# Use settings constant
	var WIDTH = OS.get_window_size().x
	var HEIGHT = OS.get_window_size().y

func _physics_process(delta):
	
	if Input.is_action_just_pressed("right"):
		print(self.position)
		self.position.x += BLOCK_DIST

	if Input.is_action_just_pressed("left"):
		self.position.x -= BLOCK_DIST
		print(self.position.x)
