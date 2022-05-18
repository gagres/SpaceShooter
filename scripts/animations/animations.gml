// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animations(){

}


function destroy_boss_sequence() {
	var elementos = layer_get_all_elements("Boss_Entrada");
	layer_sequence_destroy(elementos[0]);
	instance_create_layer(960, 256, "Boss", obj_boss);
}

function level_finished() {
	var player_x = obj_player.x;
	var player_y = obj_player.y;
	instance_destroy(obj_player, false);
	layer_sequence_create("Sequences", player_x, player_y, sq_player_completed_level);
	if (instance_exists(obj_controller)) obj_controller.finish_level();
}

function end_level() {
	var _transicao = instance_create_layer(0, 0, "Sequences", obj_transicao);
	_transicao.destino = rm_inicio;
}
