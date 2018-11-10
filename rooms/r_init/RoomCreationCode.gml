// -------------------- Configurations
//window_set_fullscreen(true)

// -------------------- Global Variables
global.cam = view_camera[0] // change init room settings if the other rooms change aswell
global.view_w_half = camera_get_view_width(global.cam) * 0.5
global.view_h_half = camera_get_view_height(global.cam) * 0.5

// -------------------- Go to next room
room_goto_next()
