/// @description Insert description here
// You can write your code in this editor

// iniciando variáveis
_speed = 8;

_cadence = room_speed / 2;

_bullet_level = 1;

criar_tiro_1 = function() {
	var y_tiro = y - (sprite_height / 2);
	instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
}

criar_tiro_2 = function() {
	var y_tiro = y - (sprite_height / 2);
	var tiro_1 = instance_create_layer(x - 60, y_tiro, "Tiros", obj_tiro_2_player);
	tiro_1.hspeed = -3;
	var tiro_2 = instance_create_layer(x + 60, y_tiro, "Tiros", obj_tiro_2_player);
	tiro_2.hspeed = 3;
}

criar_tiro_3 = function () {
	criar_tiro_1();
	criar_tiro_2();
}

criar_tiro_4 = function() {
	var y_tiro = y - (sprite_height / 2);
	instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
	var tiro_2 = instance_create_layer(x - 60, y_tiro, "Tiros", obj_tiro_player);
	tiro_2.hspeed = -3;
	tiro_2.image_angle = tiro_2 - 90;
	var tiro_3 = instance_create_layer(x + 60, y_tiro, "Tiros", obj_tiro_player);
	tiro_3.hspeed = 3;
	tiro_3.image_angle = tiro_3 + 90;
}

atirando = function() {
	if (keyboard_check(vk_space) && alarm[0] == -1) {
		alarm[0] = _cadence;
		
		if (_bullet_level == 1) {
			criar_tiro_1();
		} else if (_bullet_level == 2) {
			criar_tiro_2();
		} else if (_bullet_level == 3) {
			criar_tiro_3();
		} else if (_bullet_level == 4) {
			criar_tiro_4();
		}
	}
}
