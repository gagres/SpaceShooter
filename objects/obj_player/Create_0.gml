/// @description Insert description here
// You can write your code in this editor

// iniciando variáveis
_speed = 8;

atirando = function() {
	var fire = keyboard_check_pressed(vk_space);
	if (fire) {
		instance_create_layer(x, y - (sprite_height / 2), "Tiros", obj_tiro_player);
	}
}
