if (spawn_count < spawn_amount) {
	// randomize the enemies position, not only in the spawn origin
	instance_create_layer(x, y, "Enemies", o_enemy1)
	spawn_count++
	alarm[0] = spawn_rate
}