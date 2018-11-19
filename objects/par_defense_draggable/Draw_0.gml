if (!place_meeting(x, y, o_fortress_region) || place_meeting(x, y, par_defense)) {
	draggable_color = c_red
} else {
	draggable_color = c_white
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, draggable_color, 1)