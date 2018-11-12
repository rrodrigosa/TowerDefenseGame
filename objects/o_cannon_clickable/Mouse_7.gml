if(global.coins >= cost) {
	instance_create_depth(mouse_x, mouse_y, -9, o_cannon_draggable)
	global.coins -= cost // modify so it only reduces cost when placed
}