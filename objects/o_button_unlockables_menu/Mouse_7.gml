// enables rectangle drawing
can_draw_background = true

// create the types of ammo so the player can unlock it
var s_button_height = sprite_get_height(s_button_unlockables_menu)
var s_button_width = sprite_get_width(s_button_unlockables_menu) * 2
var s_half_ammo_width = sprite_get_width(s_button_normal_bullet_menu)/2
var side_space = 15
var vertical_space = 25

var y_result = y - (s_button_height + vertical_space)

instance_create_layer(side_space + s_half_ammo_width, y_result, "GUI", o_button_menu_normal_bullet)
instance_create_layer((s_button_width/2), y_result, "GUI", o_button_menu_ice_bullet)
instance_create_layer(s_button_width - side_space - s_half_ammo_width, y_result, "GUI", o_button_menu_fire_bullet)