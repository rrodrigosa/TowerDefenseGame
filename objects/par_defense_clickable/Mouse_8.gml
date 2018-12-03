var height = sprite_get_height(s_button_normal_bullet)
var width = sprite_get_width(s_button_normal_bullet)
var space = 8

instance_create_layer(x - (width + space), y - (height + space), "GUI", o_button_normal_bullet)
instance_create_layer(x, y - (height + space), "GUI", o_button_ice_bullet)
instance_create_layer(x + (width + space), y - (height + space), "GUI", o_button_fire_bullet)