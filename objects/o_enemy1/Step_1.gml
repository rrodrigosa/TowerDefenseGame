// check enemy life
if (health_points <= 0) {
	// screen shake
	screenShake(6, 25)
	with (instance_create_layer(x, y, layer, o_enemy1_death)) {
		//direction = other.hit_from // get the angle it got hit from not only left and right
		horizontal_speed = lengthdir_x(3, direction)
		vertical_speed = lengthdir_y(3, direction)
	}
	instance_destroy()
}