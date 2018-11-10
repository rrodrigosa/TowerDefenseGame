randomize()

enum states {
	follow,
	charge_attack,
	attack,
	damaged
}

state = states.follow
counter = 0

// get fortress position
my_dir = point_direction(x, y, o_fortress.x, o_fortress.y)

walk_speed = 2
horizontal_speed = lengthdir_x(walk_speed, my_dir)
vertical_speed = lengthdir_y(walk_speed, my_dir)
range_to_attack = 100
enemy_xscale_flip = 1
enemy_yscale_flip = 1


// getting hit by the player
health_points = 3
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
