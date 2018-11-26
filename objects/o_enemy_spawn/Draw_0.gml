draw_set_color(c_black)
draw_set_font(fnt_gui);
draw_text(10, 10, "Coins: "+string(global.coins))
draw_text(10, 30, "Level: "+string(global.level))
draw_set_color(c_white)
draw_set_font(-1);