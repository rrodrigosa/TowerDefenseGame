draw_self()

if (!instance_exists(o_fortress)) exit

draw_health = lerp(draw_health, o_fortress.current_health, 0.5)
draw_rectangle_color(x+8, y+8, x+375 * draw_health / o_fortress.max_health, y+23, c_red, c_red, c_red, c_red, false)