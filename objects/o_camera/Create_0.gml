cam = view_camera[0]
view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5

follow = o_fortress
xTo = xstart
yTo = ystart

// screen shake
shake_lenght = 0
shake_magnitude = 0
shake_remain = 0

// so we don't see more than the room borders, add this variable to camera clamp. (if the border is 32pixels)
//buff = 32
buff = 0