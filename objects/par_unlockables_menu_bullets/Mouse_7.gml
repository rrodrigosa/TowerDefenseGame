if (global.coins >= cost) {
	switch(unlocked_object_tag) {
		case "normal_bullet":
			if (!global.unlocked_normal_bullet) {
				global.unlocked_normal_bullet = true
				global.coins -= cost
			}
			break;
		case "ice_bullet":
			if (!global.unlocked_ice_bullet) {
				global.unlocked_ice_bullet = true
				global.coins -= cost
			}
			break;
		case "fire_bullet":
			if (!global.unlocked_fire_bullet) {
				global.unlocked_fire_bullet = true
				global.coins -= cost
			}
			break;
	}
}