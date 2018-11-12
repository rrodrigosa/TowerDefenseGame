// checks if it can start attacking
if(instance_exists(o_fortress)) {
	enemy_to_shoot = o_fortress
}

if(enemy_to_shoot != noone) {
	if(!shooting) {
		alarm[0] = 1
		shooting = true
	}
}

// Animation
image_speed = 1
image_angle = my_dir
if sprite_index != s_enemy1_attack {
	image_index = 0
	sprite_index = s_enemy1_attack
}

// Only goes back to charge_attack animation when attack animation is finished.
var frame = image_index
var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)
if(image_index >= image_number - frame_range && image_index < image_number) {
	state = states.charge_attack
	//resets the variable for shooting again when it comes back to the attack state
	shooting = false
}