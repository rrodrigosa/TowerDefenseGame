// Behavior (Follow)
if(instance_exists(o_fortress)) {
	my_dir = point_direction(x, y, o_fortress.x, o_fortress.y)
}
horizontal_speed = lengthdir_x(walk_speed, my_dir)
vertical_speed = lengthdir_y(walk_speed, my_dir)
x+= horizontal_speed
y+= vertical_speed
		
// setting the direction enemy is facing (used for animations)
if (horizontal_speed != 0) {
	enemy_xscale_flip = sign(horizontal_speed)	
}

if (vertical_speed != 0) {
	enemy_yscale_flip = sign(vertical_speed)
}
		
// State Transition Trigger
if (distance_to_object(o_fortress) <= range_to_attack) {
	state = states.charge_attack
}

// Animation
image_speed = 1
image_angle = my_dir
//image_xscale = enemy_xscale_flip
//image_yscale = enemy_yscale_flip

if sprite_index != s_enemy1 {
	image_index = 0;
	sprite_index = s_enemy1
}
