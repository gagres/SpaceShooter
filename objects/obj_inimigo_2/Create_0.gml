/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

_hspeed = 7;

if (x < room_width / 2) {
	// esquerda
	enemy_hdirection = 1
} else {
	// direita
	enemy_hdirection = -1;
}

atirando = function () {
	if (y > 0) {
		instance_create_layer(x - 3, y + (sprite_height / 3), "Tiros", obj_tiro_inimigo_2);
	}
}

pontos = 20;
