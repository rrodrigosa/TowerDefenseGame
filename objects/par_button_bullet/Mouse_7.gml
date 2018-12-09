var unlocked = false
switch(par_button_ammo_type) {
	case ammo_types.normal:
		unlocked = global.unlocked_normal_bullet
		break;
	case ammo_types.ice:
		unlocked = global.unlocked_ice_bullet
		break;
	case ammo_types.fire:
		unlocked = global.unlocked_fire_bullet
		break;
}

if (unlocked) {
	with (global.last_defense_clicked) {
		ammo_type = other.par_button_ammo_type
	}
	with (par_button_bullet) instance_destroy()
}