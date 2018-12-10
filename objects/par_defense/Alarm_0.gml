if(instance_exists(enemy_to_shoot)) {
	var bullet = instance_create_depth(x, y, -9, o_bullet)
	alarm[0] = fire_rate
	with (bullet) {
		speed = 10
		direction = point_direction(x, y, other.enemy_to_shoot.x, other.enemy_to_shoot.y)
		parent_defense = other.my_object // so the bullet knows its parent
		if (other.ammo_type == ammo_types.normal) {
			sprite_index = s_bullet // to change object sprite
			ammo_type = ammo_types.normal // sets the ammo type
		} else if(other.ammo_type == ammo_types.ice) {
			sprite_index = s_ice_bullet
			ammo_type = ammo_types.ice
		} else {
			sprite_index = s_fire_bullet
			ammo_type = ammo_types.fire
		}
	}
} else {
	shooting = false
}