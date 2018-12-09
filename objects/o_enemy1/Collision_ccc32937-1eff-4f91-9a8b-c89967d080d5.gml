with(other) {
	if (ammo_type == ammo_types.normal) {
		other.health_points--
	} else if(ammo_type == ammo_types.ice) {
		other.health_points--
		other.enemy_speed = 0.4
	} else {
		other.health_points = other.health_points - 2
	}
	instance_destroy()
}
