// draw the menu background
if (can_draw_background) {
	// draw the background rectangle
	var s_width = sprite_get_width(s_button_unlockables_menu) * 2
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, s_width, global.view_h, c_gray, c_gray, c_gray, c_gray, false)
	draw_set_alpha(1.0);
	
	// Menu buttons
	//var s_button_height = sprite_get_height(s_button_unlockables_menu)
	//var s_button_width = sprite_get_width(s_button_unlockables_menu) * 2
	//var s_half_ammo_width = sprite_get_width(s_button_normal_bullet_menu)/2
	//var s_ammo_height = sprite_get_height(s_button_normal_bullet_menu)
	
	var s_half_defense_width = sprite_get_width(s_button_normal_bullet_menu)/2
	//var side_space = 15
	//var vertical_space = 25
	//var y_result = y - (s_button_height + vertical_space + s_ammo_height)
	
	var s_button_height = sprite_get_height(s_button_unlockables_menu)
	var s_button_width = sprite_get_width(s_button_unlockables_menu) * 2
	var s_half_ammo_width = sprite_get_width(s_button_normal_bullet_menu)/2
	var s_ammo_height = sprite_get_height(s_button_normal_bullet_menu)
	var side_space = 15
	var vertical_space = 25
	var initial_vertical_space = 85
	var y_result = y - (s_button_height + vertical_space)

	// Text for ammo types
	draw_set_color(c_black)
	draw_set_font(fnt_clickable)
	draw_text(side_space, initial_vertical_space, "Ammo types:")
	draw_set_color(c_white)
	
	//// Text for defenses
	//draw_set_color(c_black)
	//draw_set_font(fnt_clickable)
	//draw_text(side_space, initial_vertical_space * 3, "Defenses:")
	//draw_set_color(c_white)
	//// this way shows 3 aligned defenses
	//draw_sprite(s_cannon_unlockable_menu, 0, side_space + s_half_defense_width, y_result * 2)
	//draw_sprite(s_cannon2_unlockable_menu, 0, s_button_width/2, y_result * 2)
	//draw_sprite(s_cannon3_unlockable_menu, 0, s_button_width - side_space - s_half_defense_width, y_result * 2)
	
	// Text for defense1 upgrades
	draw_set_color(c_black)
	draw_set_font(fnt_clickable)
	draw_text(side_space, initial_vertical_space * 3, "Upgrades defense 1:")
	draw_set_color(c_white)
	
	// Text for defense2 upgrades
	draw_set_color(c_black)
	draw_set_font(fnt_clickable)
	draw_text(side_space, initial_vertical_space * 5, "Upgrades defense 2:")
	draw_set_color(c_white)
	
	//// Text for defense3 upgrades
	//draw_set_color(c_black)
	//draw_set_font(fnt_clickable)
	//draw_text(side_space, initial_vertical_space * 9, "Upgrades defense 3:")
	//draw_set_color(c_white)
} else {
	draw_self()
}

// Always draw score
draw_set_color(c_black)
draw_set_font(fnt_gui);
draw_text(10, 10, "Coins: "+string(global.coins))
draw_text(10, 30, "Level: "+string(global.level))
draw_set_color(c_white)
draw_set_font(-1);