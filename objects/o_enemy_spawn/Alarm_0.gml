// working
//if (spawn_count < spawn_amount) {
//	// randomize the enemies position
//	var xx = irandom_range(200, rw-200)
//	var yy = irandom_range(200, rh-200)
//	show_debug_message("Here - XX: "+string(xx))
//	show_debug_message("Here - YY: "+string(yy))
//	instance_create_layer(xx, yy, "Enemies", o_enemy1)
//	spawn_count++
//	alarm[0] = spawn_rate
//}

// testing respaw near borders
if (spawn_count < spawn_amount) {
	// randomize the enemies position
	// first decides wich side will be (top, bottom, left, right)
	var side = irandom(3)
	var xx = 0
	var yy = 0
	
	switch (side) {
		// top
		#region top
		case 0:
			xx = irandom_range(0, rw)
			yy = irandom_range(0, 200)
			break
		#endregion
		
		// bottom
		#region bottom
		case 1:
			xx = irandom_range(0, rw)
			yy = irandom_range(rh-200, rh)
			break
		#endregion
		
		// left
		#region left
		case 2:
			xx = irandom_range(0, 200)
			yy = irandom_range(0, rh)
			break
		#endregion
		
		// right
		#region toright
		case 3:
			xx = irandom_range(rw-200, rw)
			yy = irandom_range(0, rh)
			break
		#endregion
	}

	instance_create_layer(xx, yy, "Enemies", o_enemy1)
	spawn_count++
	alarm[0] = spawn_rate
}