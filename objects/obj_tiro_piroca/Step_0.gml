/// @description Insert description here
// You can write your code in this editor

var player_x = obj_player.x;
var player_y = obj_player.y;

x = player_x;

var _player_distance = player_y - 150;

if (y <= _player_distance) {
	y = _player_distance;
}

spawn_piroquinhas();
