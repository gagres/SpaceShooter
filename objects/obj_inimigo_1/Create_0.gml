/// @description Insert description here
// You can write your code in this editor
vspeed += 4;

if (place_meeting(x, y, obj_inimigo_1)) {
	instance_destroy(id, false)
}

atirando = function() {
	if (y > 0) {
		instance_create_layer(x - 3, y + (sprite_height / 2), "Tiros", obj_tiro_inimigo_1);
	}
}

alarm[0] = game_get_speed(gamespeed_fps) * irandom_range(1, 3);

pontos = 10;
