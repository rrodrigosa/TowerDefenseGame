if (current_health <= 0) {
	// screen shake
	screenShake(6, 25)
	instance_create_layer(x, y, layer , o_fortress_death)
	
	with (o_button_next_wave) {
		instance_destroy()
	}
	instance_create_layer(x, y, "GUI", o_button_play_again)
	instance_destroy()
}