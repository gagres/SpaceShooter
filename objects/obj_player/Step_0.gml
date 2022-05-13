/// @description Insert description here
// You can write your code in this editor


//if (keyboard_check(ord("A"))) {
//	x -= _speed;
//} else if (keyboard_check(ord("D"))) {
//	x += _speed;
//}

//if (keyboard_check(ord("W"))) {
//	y -= _speed;
//} else if (keyboard_check(ord("S"))) {
//	y += _speed;
//}

var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up) * _speed;
x += (right - left) * _speed;

var min_player_vposition = room_height - 50;

if (y > min_player_vposition) {
	y = min_player_vposition;
}

atirando();

// apenas se for menor do que 5
if (keyboard_check_pressed(vk_up) && _level_bullet < 5) {
	_level_bullet++;
}

// apenas se for menor do que 5
if (keyboard_check_pressed(vk_down) && _level_bullet > 1) {
	_level_bullet--;
}
