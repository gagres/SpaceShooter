/// @description Iniciando
// You can write your code in this editor
randomize();

alarm[0] = room_speed;

pontos = 0;

level = 1;

proximo_level = 1;

enemies = [obj_inimigo_1];
end_game = false;
boss_ta_on = false;
is_level_finished = false;

///@method ganha_pontos(pontos)
ganha_pontos = function (_pontos) {
	pontos += _pontos * level;
	if (pontos >= proximo_level) {
		passar_de_nivel();	
	}
}

passar_de_nivel = function () {
	proximo_level *= 2;
	level++;
	if (level == 2) {
		array_push(enemies, obj_inimigo_2);
	}
}

criar_inimigo = function () {
	if (array_length(enemies) == 0) return;
	var _vposition = irandom_range(-64, -512);
	var _hposition = irandom_range(160, 1792);
	var enemy_type = irandom(array_length(enemies) - 1);
	instance_create_layer(_hposition, _vposition, "Inimigos", enemies[enemy_type]);
}

update_max_points = function () {
	if (pontos > global.max_points) {
		global.max_points = pontos;
	}
}

finish_level = function () {
	is_level_finished = true;
}

player_killed = function () {
	global.deaths++;
}
