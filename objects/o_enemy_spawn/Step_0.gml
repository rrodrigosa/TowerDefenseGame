if (instance_number(o_enemy1) <= 0 && start_flag == true && instance_exists(o_fortress)) {
	start_flag = false

	if (!instance_exists(o_button_play_again)) {
		instance_create_layer(x, y, "GUI", o_button_next_wave)
	}
}