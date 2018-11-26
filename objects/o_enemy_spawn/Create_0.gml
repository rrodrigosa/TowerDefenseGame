// takes care of enemy spawn
spawn_amount = 1
spawn_count = 0
spawn_rate = room_speed
alarm[0] = spawn_rate

// enemies values
global.hp = 3
global.spd = 2
global.level = 1

// player values
global.coins = 100

//// for gui resize
//display_set_gui_size(global.view_w_half, global.view_h_half);

rw = room_width
rh = room_height

// first time flag. prevents the stepevent if being called once the room starts
start_flag = false