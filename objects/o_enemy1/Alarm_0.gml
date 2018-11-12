if(instance_exists(enemy_to_shoot)) {
	var bullet = instance_create_depth(x, y, -9, o_enemy1_bullet)
	bullet.speed = 10
	bullet.direction = point_direction(x, y, enemy_to_shoot.x, enemy_to_shoot.y)
} else {
	shooting = false
}
	