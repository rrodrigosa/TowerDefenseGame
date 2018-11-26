// -------------------- Configurations
//window_set_fullscreen(true)

// -------------------- Global Variables
cam = view_camera[0]
global.view_w_half = camera_get_view_width(cam) * 0.5
global.view_h_half = camera_get_view_height(cam) * 0.5

// -------------------- Initialize methods
randomize()

// -------------------- Go to next room
room_goto_next()