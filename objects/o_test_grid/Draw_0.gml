for(var i=0; i<= max(room_width, room_height); i+=32) {
	show_debug_message(i)
     draw_line(0, i, room_width, i);
     draw_line(i, 0, i, room_height);
}