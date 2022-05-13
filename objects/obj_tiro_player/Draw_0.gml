/// @description Insert description here
// You can write your code in this editor

// Eu vou me desenhar
draw_self();


// Desenhando o brilho
if (_brilho_tiro) {
	// Alteando como o video trata as cores
	gpu_set_blendmode(bm_add);	
	draw_sprite_ext(_brilho_tiro, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, bullet_color, 0.5);
	gpu_set_blendmode(bm_normal);
}
