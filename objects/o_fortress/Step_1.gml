// uncomment after finishing tests (it's working)
if (current_health <= 0) {
	// screen shake
	screenShake(6, 25)
	instance_create_layer(x, y, layer , o_fortress_death)
	instance_destroy()
}