// Behavior (Follow)
if(instance_exists(o_fortress)) {
	my_dir = point_direction(x, y, o_fortress.x, o_fortress.y)
}
horizontal_speed = lengthdir_x(enemy_speed, my_dir)
vertical_speed = lengthdir_y(enemy_speed, my_dir)
x+= horizontal_speed
y+= vertical_speed
		
// State Transition Trigger
if (distance_to_object(o_fortress) <= enemy_range_to_attack) {
	state = states.charge_attack
}

// Animation
image_speed = 1
image_angle = my_dir

if sprite_index != s_enemy1 {
	image_index = 0
	sprite_index = s_enemy1
}