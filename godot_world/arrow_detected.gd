extends Spatial


var increment = 0
var flag = false
func _ready():
	if Input.is_action_pressed("ui_left"):
		$arrow_left.rotate_y(increment)
		if $engine.playing != true:
			$engine.play()
		if flag == false:
			increment += 0.01
			if increment >= 0.05:
				flag = true
		if flag:
			increment -= 0.01
			if increment <= -0.05:
				flag = false
	elif Input.is_action_pressed("ui_right"):
		$arrow_right.rotate_y(increment)
		if $engine.playing != true:
			$engine.play()
		if flag == false:
			increment += 0.01
			if increment >= 0.05:
				flag = true
		if flag:
			increment -= 0.01
			if increment <= -0.05:
				flag = false
	elif Input.is_action_pressed("ui_down"):
		$arrow_down.rotate_y(increment)
		if $engine.playing != true:
			$engine.play()
		if flag == false:
			increment += 0.01
			if increment >= 0.05:
				flag = true
		if flag:
			increment -= 0.01
			if increment <= -0.05:
				flag = false
	elif Input.is_action_pressed("ui_up"):
		$arrow_up.rotate_y(increment)
		if $engine.playing != true:
			$engine.play()
		if flag == false:
			increment += 0.01
			if increment >= 0.05:
				flag = true
		if flag:
			increment -= 0.01
			if increment <= -0.05:
				flag = false
	else:
		increment = 0
		$arrow_left.rotation_degrees = Vector3(0,-180,0)
		$arrow_right.rotation_degrees = Vector3(0,0,0)
		$arrow_down.rotation_degrees = Vector3(0,-90,0)
		$arrow_up.rotation_degrees = Vector3(0,90,0)
	yield(get_tree().create_timer(0.01), "timeout")

func _process(_delta):
	_ready()
	if increment == 0:
		$engine.stop()
