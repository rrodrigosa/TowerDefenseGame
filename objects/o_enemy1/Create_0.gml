randomize()

// quando o inimigo é criado, atualiza a flag do _enemy_spawn
show_debug_message("Here - o_enemy1")
with (o_enemy_spawn) {	
	start_flag = true
}

enum states {
	follow,
	charge_attack,
	attack,
	damaged
}

state = states.follow
counter = 0

// get fortress position
if(instance_exists(o_fortress)) {
	my_dir = point_direction(x, y, o_fortress.x, o_fortress.y)
}

walk_speed = global.spd
horizontal_speed = lengthdir_x(walk_speed, my_dir)
vertical_speed = lengthdir_y(walk_speed, my_dir)
enemy_range_to_attack = 100
fire_rate = room_speed
shooting = false
enemy_to_shoot = noone

// getting hit by the player
health_points = global.hp
flash = 0
hit_from = 0

// enemy shake
shake_lenght = 0
shake_magnitude = 0
shake_remain = 0

// used/set in the attack collision
// this is needed so after the shaking, the enemy goes back to a valid position (not inside solids)
before_shaking_x = 0
before_shaking_Y = 0

// minimum time before changing to the next state, so the damaged state stays longer.
min_time_change_state = room_speed