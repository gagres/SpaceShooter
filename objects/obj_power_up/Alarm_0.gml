/// @description Insert description here
// You can write your code in this editor

image_alpha -= .1

if (image_alpha <= .3) {
	instance_destroy();
}

alarm[0] = room_speed;
