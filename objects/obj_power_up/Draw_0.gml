/// @description Insert description here
// You can write your code in this editor

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(
	spr_brilho_tiro_2,
	image_index,
	x,
	y,
	image_xscale + .5,
	image_yscale + .5,
	image_angle,
	cor,
	image_alpha - .3
);
gpu_set_blendmode(bm_normal);
