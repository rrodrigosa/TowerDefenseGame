// resets the counter
counter = 0
	
// enemy shake
x += random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1/shake_lenght)*shake_magnitude))
		
// resets the state
if (shake_remain <= 0) {
	// after the shaking, resets its valid position
	x = before_shaking_x
	y = before_shaking_y
			
	min_time_change_state--
	if (min_time_change_state <= 0) {
		min_time_change_state = room_speed
		state = states.charge_attack
	}
}
		
// Taking Damage animation
// Animation
image_speed = 1
image_xscale = enemy_xscale_flip
image_yscale = enemy_yscale_flip

if sprite_index != s_enemy1_damaged {
	image_index = 0;
	sprite_index = s_enemy1_damaged
}