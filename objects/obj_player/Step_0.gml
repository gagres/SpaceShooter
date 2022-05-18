/// @description Insert description here
// You can write your code in this editor

var up, down, left, right;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

y += (down - up) * _speed;
x += (right - left) * _speed;

x = clamp(x, 64, 1856);
y = clamp(y, 90, 992);

var min_player_vposition = room_height - 50;

if (y > min_player_vposition) {
	y = min_player_vposition;
}

atirando();
activate_shield();
