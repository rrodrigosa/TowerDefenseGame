// enables rectangle drawing
can_draw_background = true

if(first_time_open) {
	first_time_open = false
	close = true
	var s_button_height = sprite_get_height(s_button_unlockables_menu)
	var s_button_width = sprite_get_width(s_button_unlockables_menu) * 2
	var s_half_ammo_width = sprite_get_width(s_button_normal_bullet_menu)/2
	var side_space = 15
	var vertical_space = 25
	var y_result = y - (s_button_height + vertical_space)

	// Create the ammo types buttons
	instance_create_layer(side_space + s_half_ammo_width, y_result, "GUI", o_button_menu_normal_bullet)
	instance_create_layer((s_button_width/2), y_result, "GUI", o_button_menu_ice_bullet)
	instance_create_layer(s_button_width - side_space - s_half_ammo_width, y_result, "GUI", o_button_menu_fire_bullet)

	// Create first defense upgrades buttons
	instance_create_layer(side_space + s_half_ammo_width, y_result * 2, "GUI", o_button_menu_range_upgrade_defense1)
	instance_create_layer(s_button_width - side_space - s_half_ammo_width, y_result * 2, "GUI", o_button_menu_damage_upgrade_defense1)

	// Create second defense upgrades buttons
	instance_create_layer(side_space + s_half_ammo_width, y_result * 3, "GUI", o_button_menu_range_upgrade_defense2)
	instance_create_layer(s_button_width - side_space - s_half_ammo_width, y_result * 3, "GUI", o_button_menu_damage_upgrade_defense2)
} else {
	close = true
	instance_activate_all()
}