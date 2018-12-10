draw_self()
draw_set_color(c_black)
draw_set_font(fnt_clickable)
draw_text(x-(sprite_height/2), y-(sprite_width+5), string(cost))
draw_set_color(c_white)

// make objects red
switch(unlocked_object_tag) {
		// Ammo types
		case "normal_bullet":
			if (!global.unlocked_normal_bullet) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
		case "ice_bullet":
			if (!global.unlocked_ice_bullet) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
		case "fire_bullet":
			if (!global.unlocked_fire_bullet) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
			
		// Defenses
		case "range_upgrade_defense1":
			if (!global.unlocked_range_upgrade_defense1) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
			
		case "damage_upgrade_defense1":
			if (!global.unlocked_damage_upgrade_defense1) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
			
		case "range_upgrade_defense2":
			if (!global.unlocked_range_upgrade_defense2) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
			
		case "damage_upgrade_defense2":
			if (!global.unlocked_damage_upgrade_defense2) {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_red, 1)
			} else {
				draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
			}
			break;
	}