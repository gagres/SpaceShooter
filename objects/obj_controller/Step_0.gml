/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player) && !is_level_finished) {
	if (!end_game) {
		layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_end_game);
		player_killed();
	}
	end_game = true;
	
	if (keyboard_check_pressed(vk_enter)) {
		var _transicao = instance_create_layer(0, 0, "Player", obj_transicao);
		_transicao.destino = rm_inicio;
	}
}
