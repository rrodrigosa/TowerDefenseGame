if(draggable_color == c_white) {
	instance_destroy()
	instance_create_depth(mouse_x, mouse_y, -1, o_cannon)
}