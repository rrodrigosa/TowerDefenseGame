show_debug_message("Rate: "+string(spawn_rate))
if (instance_number(o_enemy1) <= 0 && start_flag == true) {
	start_flag = false
	instance_create_layer(x, y, "GUI", o_button_next_wave)
}