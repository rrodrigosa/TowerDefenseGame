health_points--

// ammo types tests
with(other) {
	if (ammo_type == ammo_types.normal) {
		show_debug_message("Tiro normal")
	} else if(ammo_type == ammo_types.ice) {
		show_debug_message("Tiro gelo")
	} else {
		show_debug_message("Tiro fogo")
	}
	instance_destroy()
}
