/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();

var image_pos = 1;
repeat(vida) {
	draw_sprite_ext(spr_player, 0, 40 * image_pos, altura_gui - 40, .3, .3, 0, c_white, .7);
	image_pos++;
}
