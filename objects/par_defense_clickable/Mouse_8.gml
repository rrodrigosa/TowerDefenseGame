var height = sprite_get_height(s_button_normal_bullet)
var width = sprite_get_width(s_button_normal_bullet)
var side_space = 15
var top_space = 10

// saves the specific defense wich ammo type will be changed
global.last_defense_clicked = my_object

// create the types of ammo so the player can choose it
if (global.unlocked_normal_bullet) {
	instance_create_layer(x - (width + side_space), y - (height + side_space + top_space), "GUI", o_button_normal_bullet)
}

if (global.unlocked_ice_bullet) {
	instance_create_layer(x, y - (height + side_space + top_space), "GUI", o_button_ice_bullet)
}

if (global.unlocked_fire_bullet) {
	instance_create_layer(x + (width + side_space), y - (height + side_space + top_space), "GUI", o_button_fire_bullet)
}