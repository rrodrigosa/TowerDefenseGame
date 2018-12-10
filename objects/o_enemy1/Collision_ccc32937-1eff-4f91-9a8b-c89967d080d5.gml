with(other) {
	// verifies damage boost from upgrades
	var multiplier = 1
	switch(parent_defense) {
		case "o_cannon":
			multiplier = global.damage_upgrade_defense1
			show_debug_message("Here - multipler D1: "+string(multiplier))
			break;
		case "o_cannon2":
			multiplier = global.damage_upgrade_defense2
			show_debug_message("Here - multipler D2: "+string(multiplier))
			break;
	}
	
	if (ammo_type == ammo_types.normal) {
		other.health_points = other.health_points - (1 * multiplier)
	} else if(ammo_type == ammo_types.ice) {
		other.health_points = other.health_points - (1 * multiplier)
		other.enemy_speed = 0.4
	} else {
		other.health_points = other.health_points - (2 * multiplier)
	}
	instance_destroy()
}
