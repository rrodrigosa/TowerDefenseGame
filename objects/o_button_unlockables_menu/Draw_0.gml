// draw the menu background
if (can_draw_background) {
	var s_width = sprite_get_width(s_button_unlockables_menu) * 2
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, s_width, global.view_h, c_gray, c_gray, c_gray, c_gray, false)
	draw_set_alpha(1.0);
} else {
	draw_self()
}

draw_set_color(c_black)
draw_set_font(fnt_gui);
draw_text(10, 10, "Coins: "+string(global.coins))
draw_text(10, 30, "Level: "+string(global.level))
draw_set_color(c_white)
draw_set_font(-1);