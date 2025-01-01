# WIP

gz service -s /world/free_world/create --reqtype gz.msgs.EntityFactory --reptype gz.msgs.Boolean --timeout 300 --req "sdf_filename: 'players/robot_player/robot.sdf' pose: {position: {z: 1}} name: 'new_name' allow_renaming: true"

another example: gz topic -i -t /world/free_world/stats --json-output
