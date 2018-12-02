if(draggable_color == c_white && global.coins >= cost) {
	//instance_destroy()
	instance_create_depth(x, y, -1, defense)
	global.coins -= cost // reduces the player gold only when it's placed
}