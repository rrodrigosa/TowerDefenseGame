/// @desc screenShake(magnitude, frames)
/// @arg Magnitude strength of the shake (radius in pixels)
/// @arg Frames length of the shake (in frames)

with (o_camera) {
	if (argument0 > shake_remain) {
		shake_magnitude = argument0
		shake_remain = argument0
		shake_lenght = argument1
	}
}
