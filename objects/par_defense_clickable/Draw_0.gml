/// @description Draw Cost of the Tower

draw_self()
draw_set_color(c_black)
draw_set_font(fnt_clickable)
draw_text(x-(sprite_height/2)+3, y-(sprite_width+5), string(cost))
draw_set_color(c_white)