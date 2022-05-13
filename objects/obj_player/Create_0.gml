/// @description Insert description here
// You can write your code in this editor

// iniciando variáveis
_speed = 8;

_time_between_bullets = room_speed / 2;
_level_bullet = 1;

atirando = function() {
	if (keyboard_check(vk_space) and alarm[0] == -1) {
		alarm[0] = _time_between_bullets;
		
		if (_level_bullet == 1) {
			instance_create_layer(x, y - (sprite_height / 2), "Tiros", obj_tiro_player);
		} else if (_level_bullet == 2) {
			instance_create_layer(x, y - (sprite_height / 2), "Tiros", obj_tiro_2_player);
		} else if (!instance_exists(obj_tiro_piroca)) {
			instance_create_layer(x, y - (sprite_height / 2), "Tiros", obj_tiro_piroca);
		}
	}
}
