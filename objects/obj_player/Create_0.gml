/// @description Insert description here
// You can write your code in this editor

// iniciando variáveis
_speed = 5;
vida = 3;
available_shields = 3;
shield_active = false;

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
	var count = 0;
	repeat(3) {
		var tiro = instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
		tiro.direction = 65 + 25 * count;
		tiro.image_angle = tiro.direction - 90;
		count++;
	}
}

criar_tiro_5 = function () {
	criar_tiro_2();
	criar_tiro_4();
}

upgrade_bullet_level = function () {
	if (_bullet_level < 5) {
		_bullet_level++;
	}
}

upgrade_speed = function () {
	if (_speed < 10) {
		_speed += .5;
	}
}

upgrade_bullet_speed = function () {
	if (_cadence > 10) {
		_cadence *= 0.9;
	}
}

atirando = function() {
	if (keyboard_check(vk_space) && alarm[0] == -1) {
		alarm[0] = _cadence;
		audio_play_sound(sfx_laser2, 2, false);
		
		if (_bullet_level == 1) {
			criar_tiro_1();
		} else if (_bullet_level == 2) {
			criar_tiro_2();
		} else if (_bullet_level == 3) {
			criar_tiro_3();
		} else if (_bullet_level == 4) {
			criar_tiro_4();
		} else {
			criar_tiro_5();
		}
	}
}

perde_vida = function () {
	if (vida > 1) {
		screenshake(3);
		vida--;
	} else {
		screenshake(20);
		instance_destroy();
	}
}

activate_shield = function () {
	if (available_shields > 0 && !shield_active) {
		if (keyboard_check_pressed(ord("E"))) {
			var shield = instance_create_layer(x, y, "Shield", obj_shield);
			shield.alvo = id;
			available_shields--;
			shield_active = true;
			audio_play_sound(sfx_shieldUp, 1, 0);
		}
	}
}

deactivate_shield = function () {
	shield_active = false;
	audio_play_sound(sfx_shieldDown, 1, 0);
}
