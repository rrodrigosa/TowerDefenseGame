// Animation
image_speed = 1
image_angle = my_dir
if sprite_index != s_enemy1_charge_attack {
	image_index = 0
	sprite_index = s_enemy1_charge_attack
}

// Only goes to attack animation when charge_attack animation is finished.
var frame = image_index
var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)
if(image_index >= image_number - frame_range && image_index < image_number) {
	state = states.attack
}