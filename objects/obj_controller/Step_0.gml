/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player) &&
	!level_finished) {
	if (!end_game) {
		layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_end_game);
	}
	end_game = true;
	
	if (keyboard_check_pressed(vk_enter)) {
		room_restart();
	}
}
