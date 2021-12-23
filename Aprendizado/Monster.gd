extends StaticBody2D

var flip = true
var initial_position
var final_position
var velocity = 0.3

func _ready():
	$Sprite.play("Run")
	initial_position = $".".position.x
	final_position = initial_position + 100
	
	
func _process(delta):
		
		if(initial_position <= final_position and flip):
			$".".position.x += velocity
			$Sprite.flip_h = false
			if($".".position.x >= final_position):
				flip = false
		if($".".position.x >= initial_position and !flip):
			$".".position.x -= velocity
			$Sprite.flip_h = true
			if($".".position.x <= initial_position):
				flip = true


