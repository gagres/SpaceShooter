/// @description Insert description here
// You can write your code in this editor

var scale = 1;
image_xscale = scale;
image_yscale = scale;

vspeed = -6;

if (place_meeting(x, y, obj_tiro_piroquinha)) {
	instance_destroy(id, false);
}
