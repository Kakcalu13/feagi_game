"""
Copyright 2016-2022 The FEAGI Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================
"""

extends Spatial


const PLAYER_MOVE_SPEED = 4

onready var Camera = $Camera

func _process(delta):
	pass



#	self.velocity = self.move_and_slide_with_snap(
#		self.velocity,
#		snap_vector,
#		Vector3(0, +1, 0),
#		true
#	)
