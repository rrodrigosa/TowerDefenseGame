if(instance_number(o_enemy1) <= 0) {
	spawn_count = 0
	spawn_amount++
	global.level++
	global.hp++
	global.spd += 0.1
	spawn_rate -= 2.5
	alarm[0] = spawn_rate
	
	// clears all the dead enemies before the next wave
	with (o_enemy1_death) {
		instance_destroy()
	}
}