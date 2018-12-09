// -------------------- Configurations
//window_set_fullscreen(true)

// -------------------- Global Variables
cam = view_camera[0]
global.view_w_half = camera_get_view_width(cam) * 0.5
global.view_h_half = camera_get_view_height(cam) * 0.5

global.view_w = camera_get_view_width(cam)
global.view_h = camera_get_view_height(cam)

// these may need to be put on r_main so it reset it states with a new game?
global.unlocked_normal_bullet = false
global.unlocked_ice_bullet = false
global.unlocked_fire_bullet = false

// -------------------- Initialize methods
randomize()

// -------------------- Go to next room
room_goto_next()