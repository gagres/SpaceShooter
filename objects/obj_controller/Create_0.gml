/// @description Iniciando
// You can write your code in this editor

alarm[0] = room_speed;

pontos = 0;

level = 1;

proximo_level = 20;

enemies = [obj_inimigo_1];

end_game = false;

///@method ganha_pontos(pontos)
ganha_pontos = function (_pontos) {
	pontos += _pontos;
	if (pontos >= proximo_level) {
		proximo_level *= 2;
		level++;
		if (level == 2) {
			array_push(enemies, obj_inimigo_2);
		}
	}
}

criar_inimigo = function () {
	var _vposition = irandom_range(-64, -512);
	var _hposition = irandom_range(160, 1792);
	var enemy_type = irandom(array_length(enemies) - 1);
	instance_create_layer(_hposition, _vposition, "Inimigos", enemies[enemy_type]);
}

