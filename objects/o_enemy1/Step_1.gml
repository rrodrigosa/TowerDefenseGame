// check enemy life
if (health_points <= 0) {
	// screen shake
	screenShake(6, 25)
	with (instance_create_layer(x, y, layer, o_enemy1_death)) {
		if(instance_exists(o_fortress)) {
			image_angle = point_direction(x, y, o_fortress.x, o_fortress.y)
		}
	}
	instance_destroy()
}