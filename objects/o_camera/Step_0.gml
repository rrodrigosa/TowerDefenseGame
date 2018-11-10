// update destination
if (instance_exists(follow)) {
	xTo = follow.x
	yTo = follow.y
	
	// checks if it should follow the o_fortress_death on normal speed and not divided by 25
	if (follow.object_index == o_fortress_death) {
		x = xTo
		y = yTo
	}
}

// update object position
x += (xTo - x) / 25
y += (yTo - y) / 25

// doesn't let the camera move beyond the room borders
x = clamp(x, global.view_w_half+buff, room_width-global.view_w_half-buff)
y = clamp(y, global.view_h_half+buff, room_height-global.view_h_half-buff)

// screen shake
x += random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain-((1/shake_lenght)*shake_magnitude))

// update camera view
camera_set_view_pos(global.cam, x-global.view_w_half, y-global.view_h_half)