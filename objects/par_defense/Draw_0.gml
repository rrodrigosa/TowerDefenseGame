//if(mouseOver(x, y, sprite_width, sprite_height))
	draw_circle(x, y, defense_range_to_shoot, true)

var enemy = instance_nearest(x, y, o_enemy1)
if(enemy != noone) {
	if(point_distance(x, y, enemy.x, enemy.y) <= defense_range_to_shoot) {
		if(!shooting) {
			alarm[0] = 1
			shooting = true
		}
		enemy_to_shoot = enemy
		if(mouseOver(x, y, sprite_width, sprite_height))
			draw_line(x, y, enemy.x, enemy.y)
	} else {
		shooting = false
		enemy_to_shoot = noone
	}
}

draw_self()