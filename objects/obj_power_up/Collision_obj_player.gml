/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	var player = obj_player;
	if (chance > 90) player.upgrade_bullet_level();
	else if (chance > 45) player.upgrade_bullet_speed();
	else player.upgrade_speed();
}

instance_destroy();
