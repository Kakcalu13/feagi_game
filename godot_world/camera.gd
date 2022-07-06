# Copyright 2016-2022 The FEAGI Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================

extends Camera

var flagged = false ## This allows space and del to be able to send data without being overwritten by spam "{}"

const CAMERA_TURN_SPEED = 200

func get_input_keyboard(_delta):
	# Rotate outer gimbal around y axis
	
	if Input.is_action_pressed("ui_left"):
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'turn_left\'"] = [Vector3(17, 10, 0)]
		websocket.send(String(Godot_list.godot_list))
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'turn_left\'"] = []
	elif Input.is_action_pressed("ui_right"):
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'turn_right\'"] = [Vector3(25, 10, 0)]
		websocket.send(String(Godot_list.godot_list))
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'turn_right\'"] = []
	elif Input.is_action_pressed("ui_down"):
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'backward\'"] = [Vector3(23, 10, 2)]
		websocket.send(String(Godot_list.godot_list))
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'backward\'"] = []
	elif Input.is_action_pressed("ui_up"):
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'forward\'"] = [Vector3(23, 10, -2)]
		websocket.send(String(Godot_list.godot_list))
		Godot_list.godot_list["\'data\'"]["\'direct_stimulation\'"]["\'forward\'"] = []
func _process(delta):
	get_input_keyboard(delta)
