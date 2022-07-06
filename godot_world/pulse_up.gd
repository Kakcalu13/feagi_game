extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pulse = 0
var increment = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	while true:
		while increment <= 1:
			self.scale.x += 0.1
			self.scale.y += 0.1
			increment += 0.1
			yield(get_tree().create_timer(0.03), "timeout")
		while increment >= 0.1:
			self.scale.x -= 0.1
			self.scale.y -= 0.1
			increment -= 0.1
			yield(get_tree().create_timer(0.03), "timeout")
