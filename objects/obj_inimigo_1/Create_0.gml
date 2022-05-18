/// @description Insert description here
// You can write your code in this editor
vspeed += 4;

chance = 50;

if (place_meeting(x, y, obj_inimigo_1)) {
	instance_destroy(id, false)
}

atirando = function() {
	if (y > 0) {
		instance_create_layer(x - 3, y + (sprite_height / 2), "Tiros", obj_tiro_inimigo_1);
		audio_play_sound(sfx_laser1, 2, false);
	}
}

alarm[0] = game_get_speed(gamespeed_fps) * irandom_range(1, 3);

pontos = 10;

dropa_item = function () {
	var valor = irandom(100)
	
	if (valor <= chance) {
		instance_create_layer(x, y, "PowerUps", obj_power_up);
	}
}
