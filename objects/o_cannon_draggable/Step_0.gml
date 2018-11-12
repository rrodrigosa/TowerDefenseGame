x = mouse_x
y = mouse_y

if (!place_meeting(x, y, o_fortress_region) || place_meeting(x, y, o_cannon_parent)) {
	draggable_color = c_red
} else {
	draggable_color = c_white
}