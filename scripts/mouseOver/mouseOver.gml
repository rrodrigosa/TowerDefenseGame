var xx = argument0
var yy = argument1
var width = argument2
var height= argument3

xx = xx - width/2
yy = yy - height/2

if((mouse_x > xx && mouse_x < xx + width) && (mouse_y > yy && mouse_y < yy + height)) {
	return true
} else {
	return false
}