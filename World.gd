extends Node2D

const PLAYER_POSITION = Vector2(70, 500)

func _ready():
	$player.position = PLAYER_POSITION
	$Background.margin_right = 360 # Use settings constant
	

