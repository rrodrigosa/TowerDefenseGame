// counter to charge the attack up
counter++
if (counter >= room_speed) {
	counter = 0
	state = states.attack
}

// Animation
image_speed = 1
image_angle = my_dir

if sprite_index != s_enemy1_charge_attack {
	image_index = 0;
	sprite_index = s_enemy1_charge_attack
}