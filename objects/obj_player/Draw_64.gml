/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

var life_pos = 1;
repeat(vida) {
	draw_sprite_ext(spr_player, 0, 40 * life_pos, altura_gui - 40, .3, .3, 0, c_white, .7);
	life_pos++;
}

var shield_pos = 1;
repeat(available_shields) {
	draw_sprite_ext(spr_shield, 2, 40 * shield_pos, altura_gui - 80, .3, .3, 0, c_white, .7);
	shield_pos++;
}

