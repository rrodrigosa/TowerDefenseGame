// -------------------- Configurations
//window_set_fullscreen(true)

// -------------------- Global Variables
cam = view_camera[0]
global.view_w_half = camera_get_view_width(cam) * 0.5
global.view_h_half = camera_get_view_height(cam) * 0.5
global.view_w = camera_get_view_width(cam)
global.view_h = camera_get_view_height(cam)

// -------------------- Ammo types -------------------- 
global.unlocked_normal_bullet = false
global.unlocked_ice_bullet = false
global.unlocked_fire_bullet = false

// -------------------- Upgrades -------------------- 
//Defense 1
global.total_range_upgrade_defense1 = 300 // initial value, will be incremented each upgrade
global.unlocked_range_upgrade_defense1 = false
global.unlocked_damage_upgrade_defense1 = false
global.range_upgrade_defense1 = 1
global.damage_upgrade_defense1 = 1
// to show the level in the GUI
global.range_upgrade_lvl_defense1 = 1
global.damage_upgrade_lvl_defense1 = 1

// Defense 2
global.total_range_upgrade_defense2 = 900 // initial value, will be incremented each upgrade
global.unlocked_range_upgrade_defense2 = false
global.unlocked_damage_upgrade_defense2 = false
global.range_upgrade_defense2 = 1
global.damage_upgrade_defense2= 1
// to show the level in the GUI
global.range_upgrade_lvl_defense2 = 1
global.damage_upgrade_lvl_defense2 = 1

// -------------------- Initialize methods
randomize()

// -------------------- Go to next room
room_goto_next()