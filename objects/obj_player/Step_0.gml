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

atirando();

