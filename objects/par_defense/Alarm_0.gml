if(instance_exists(enemy_to_shoot)) {
	var bullet = instance_create_depth(x, y, -9, o_bullet)
	bullet.speed = 10
	bullet.direction = point_direction(x, y, enemy_to_shoot.x, enemy_to_shoot.y)
	alarm[0] = fire_rate
	
	// ammo types tests. alterar o ammo_type ao clicar no clickable
	if (ammo_type == ammo_types.normal) {
		bullet.sprite_index = s_bullet // to change object sprite
		bullet.ammo_type = ammo_types.normal // sets the ammo type
	} else if(ammo_type == ammo_types.ice) {
		bullet.sprite_index = s_ice_bullet
		bullet.ammo_type = ammo_types.ice
	} else {
		bullet.sprite_index = s_fire_bullet
		bullet.ammo_type = ammo_types.fire
	}
	
} else {
	shooting = false
}