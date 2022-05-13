/// @description Insert description here
// You can write your code in this editor

vspeed -= 10;

image_xscale = 3;
image_yscale = 3;

alarm[0] = room_speed * 3;

_instantiated = false;

_spawn_piroquinha_time = room_speed / 2;

spawn_piroquinhas = function() {
	if (!_instantiated) {
		alarm[1] = _spawn_piroquinha_time;
		_instantiated = true;
	}
}
