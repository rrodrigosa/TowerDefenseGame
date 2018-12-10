if (global.coins >= cost) {
	switch(unlocked_object_tag) {
		// Ammo type
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
			
		// Upgrades
		case "range_upgrade_defense1":
			global.unlocked_range_upgrade_defense1 = true
			global.range_upgrade_lvl_defense1++
			global.coins -= cost
			
			// updates to the new cost
			cost = cost * cost_multiplier
				
			// updating upgrades on defenses
			global.range_upgrade_defense1 = global.range_upgrade_defense1 * upgrade_multiplier
			
			with (o_cannon) {
				// updates all the instances on the field
				defense_range_to_shoot = defense_range_to_shoot * global.range_upgrade_defense1
				
				// updates a global var to be used when the next instances will be placed/created
				global.total_range_upgrade_defense1 = defense_range_to_shoot
			}
			break;
		case "damage_upgrade_defense1":
			global.unlocked_damage_upgrade_defense1 = true
			global.damage_upgrade_lvl_defense1++
			global.coins -= cost
			
			// updates to the new cost
			cost = cost * cost_multiplier
			
			// updating upgrades on defenses
			global.damage_upgrade_defense1 = global.damage_upgrade_defense1 * upgrade_multiplier
			break;
			
		case "range_upgrade_defense2":
			global.unlocked_range_upgrade_defense2 = true
			global.range_upgrade_lvl_defense2++
			global.coins -= cost
			
			// updates to the new cost
			cost = cost * cost_multiplier
				
			// updating upgrades on defenses
			global.range_upgrade_defense2 = global.range_upgrade_defense2 * upgrade_multiplier
			
			with (o_cannon2) {
				// updates all the instances on the field
				defense_range_to_shoot = defense_range_to_shoot * global.range_upgrade_defense2
				
				// updates a global var to be used when the next instances will be placed/created
				global.total_range_upgrade_defense1 = defense_range_to_shoot
			}
			break;
			
		case "damage_upgrade_defense2":
			global.unlocked_damage_upgrade_defense2 = true
			global.damage_upgrade_lvl_defense2++
			global.coins -= cost
			
			// updates to the new cost
			cost = cost * cost_multiplier
				
			// updating upgrades on defenses
			global.damage_upgrade_defense2 = global.damage_upgrade_defense2 * upgrade_multiplier
			break;
	}
}